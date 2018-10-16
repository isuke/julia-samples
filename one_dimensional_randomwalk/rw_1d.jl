include("update.jl")

function randmwalk(nsteps::Integer, prob::Real = 0.5)
  result = zeros(Int, nsteps + 1)
  x = 0
  for t in 1:nsteps
    x = update(x)
    result[t + 1] = x
  end
  result
end
