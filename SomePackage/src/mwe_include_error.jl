fldr="C:\\temp\\a\\"
cd(fldr)
cd("SomePackage")
using Pkg
Pkg.activate(".")
@show readdir(fldr)
fi=joinpath("src","file.jl")

absfi=abspath(fi)
@show isfile(absfi)
include(absfi) #works

@assert isfile(fi) #passes
@show pwd()
@show isfile(fi) #true
@show fi
include(fi) #fails
using SomePackage
