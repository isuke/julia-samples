x = 0

function update(x::Real, p::Real = 0.5)
  if rand() < p
    x + one(x)
  else
    x - one(x)
  end
end

function randmwalk(nsteps::Integer, prob::Real = 0.5)
  result = zeros(Int, nsteps + 1)
  x = 0
  for t in 1:nsteps
    x = update(x)
    result[t + 1] = x
  end
  result
end

N = 1000
xs = zeros(Float64, N)

nsteps = length(ARGS) > 0 ? parse(Int    , ARGS[1]) : 1000
prob   = length(ARGS) > 1 ? parse(Float64, ARGS[2]) : 0.5

result = randmwalk(nsteps, prob)

for (t, x) in enumerate(result)
  println("$(t-1) $x")
end
