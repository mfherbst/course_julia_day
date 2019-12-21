# Getting to know Julia in one day

This introductory course into Julia is presented in the form of Jupyter notebooks,
which discuss the key concepts of the language from
the angle of performing molecular simulations or linear algebra
operations. It also provides an overview of existing packages
and projects based on Julia.

This material was originally prepared for the Julia day at Sorbonne Université
on 13.12.2019.
More details on [my website](https://michael-herbst.com/teaching/2019-julia-day-jussieu/).

## Installing Julia
For working on the notebooks **Julia 1.3** is recommended.
Julia can be easily obtained in binary form from
[Julia downloads](https://julialang.org/downloads/).
[Installation instructions](https://julialang.org/downloads/platform.html)
specific to your operating systems are available.

## Installing Jupyter and IJulia
For working with the material you need a working
[IJulia setup](https://github.com/JuliaLang/IJulia.jl),
this means you need to install Jupyter and integrate it with Julia.
Roughly this boils down to:

1. Install Jupyter notebook. For Linux choose your favourite package manager, like
```bash
apt install jupyter jupyter-notebook
```
for debian or
```bash
pip install jupyter
```
if you prefer PyPi packages. For Mac use `brew install jupyterlab`.

2. Install `IJulia` inside Julia. For this run
```bash
/path/to/juliafolder/bin/julia -e 'import Pkg; Pkg.add("IJulia")'
```
in your terminal, where `/path/to/juliafolder` is the path
into which you unpacked the `julia` tarball.

## Getting the files and starting the notebooks
For getting the course files to your computer, the simplest is to use git:
```bash
git clone https://github.com/mfherbst/course_julia_day
```
After the command is finished you can start the notebooks as usual:
```bash
cd course_julia_day
jupyter notebook .
```

## Citation
If you find this material useful, please consider citing it:
[![DOI](https://zenodo.org/badge/218152558.svg)](https://zenodo.org/badge/latestdoi/218152558)
