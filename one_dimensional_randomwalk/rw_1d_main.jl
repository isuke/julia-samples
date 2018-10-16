include("rw_1d.jl")

nsteps = length(ARGS) > 0 ? parse(Int    , ARGS[1]) : 1000
prob   = length(ARGS) > 1 ? parse(Float64, ARGS[2]) : 0.5

result = randmwalk(nsteps, prob)

for (t, x) in enumerate(result)
  println("$(t-1) $x")
end
