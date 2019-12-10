using LinearAlgebra
using CuArrays

function davidson(A, SS::AbstractArray; maxiter=100, prec=I,
                  tol=20size(A,2)*eps(eltype(A)), maxsubspace=8size(SS, 2))
    m = size(SS, 2)
    for i in 1:100
        Ass = A * SS

        rvals, rvecs = eigen(Hermitian(SS' * Ass))
        rvals = rvals[1:m]
        rvecs = rvecs[:, 1:m]
        Ax = Ass * rvecs

        R = Ax - SS * rvecs * Diagonal(rvals)
        if norm(R) < tol
            return rvals, SS * rvecs
        end

        if size(SS, 2) + m > maxsubspace
            SS = typeof(R)(qr(hcat(SS * rvecs, prec * R)).Q)
        else
            SS = typeof(R)(qr(hcat(SS, prec * R)).Q)
        end
    end
    error("not converged.")
end

# Workaround because this interface is not yet implemented ...
using CuArrays.CUSOLVER
function LinearAlgebra.eigen(A::Hermitian{T, CuArray{T, 2, Nothing}}) where {T <: Real}
    CUSOLVER.syevd!('V', 'U', A.data)
end

function test_cuda(N, nev=2, T=Float32)
    A = randn(T, N, N)
    A = A + A' - I
    x0 = randn(T, size(A, 2), nev)
    x0 = Array(qr(x0).Q)

    println("Conventional")
    @time davidson(A, x0)
    println()
    println()
    println("GPU")
    Ad = cu(A)    # Put on the device
    x0d = cu(x0)  # Put also on the device
    @time davidson(Ad, x0d)
end
