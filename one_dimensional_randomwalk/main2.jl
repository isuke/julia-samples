include("update.jl")

using Statistics

function randmwalk(num::Integer, nsteps::Integer, prob::Real = 0.5)
  means, vars = zeros(nsteps + 1), zeros(nsteps + 1)

  xs = zeros(num)
  means[1] = mean(xs)
  vars[1]  = var(xs)

  for t in 1:nsteps
    map!(x -> update(x, prob), xs, xs)
    means[t + 1] = mean(xs)
    vars[t + 1]  = var(xs)
  end
  means, vars
end

num      = length(ARGS) > 0 ? parse(ARGS[1]) : 1000
nsteps   = length(ARGS) > 1 ? parse(ARGS[2]) : 1000
prob     = length(ARGS) > 2 ? parse(ARGS[3]) : 0.5
filename = length(ARGS) > 3 ? parse(ARGS[4]) : ""

if isempty(filename)
  io = stdout
else
  io = open(filename, "w")
end

means, vars = randmwalk(num, nsteps, prob)

for (i, (m, v)) in enumerate(zip(means, vars))
  println(io, "$(i - 1) $m $v")
end

if io != stdout
  close(io)
end
