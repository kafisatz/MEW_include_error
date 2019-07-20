fldr="C:\\temp\\a\\"
cd(fldr)
cd("SomePackage")
using Pkg
Pkg.activate(".")
@show readdir(fldr)
fi=joinpath("src","file.jl")
@assert isfile(fi)
@show isfile(fi)
include(fi)
using SomePackage