# Getting to know Julia in one day  [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/mfherbst/course_julia_day/master?filepath=00_Introduction.ipynb)

**Note: This material is a little outdated,
see [michael-herbst.com/learn-julia](https://michael-herbst.com/learn-julia)
for my most recent workshop.**

This introductory course into Julia is presented in the form of Jupyter notebooks,
which discuss the key concepts of the language from
the angle of performing molecular simulations or linear algebra
operations. It also provides an overview of existing packages
and projects based on Julia.

This material was originally prepared for the Julia day at Sorbonne Université
on 13.12.2019 ([details](https://michael-herbst.com/teaching/2019-julia-day-jussieu/)),
but was also presented at 36c3 in Leipzig.

## Using the tutorial online
If you don't want to install Julia just yet, just run the tutorial
[on binder](https://mybinder.org/v2/gh/mfherbst/course_julia_day/master?filepath=00_Introduction.ipynb),
which allows you to work with the material directly from your browser.

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
