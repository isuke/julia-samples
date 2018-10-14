function update(x::Real, p::Real = 0.5)
  if rand() < p
    x + one(x)
  else
    x - one(x)
  end
end
