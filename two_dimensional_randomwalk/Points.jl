module Points
  using Random

  import Base: zero, zeros, rand
  import Base: +, -, *, /, \
  import Base: abs, abs2

  export Point, update, plot_str

  zero(x::Point) = zero(typeof(x))
  rand(x::Point) = rand(typeof(x))

  function zeros(::Type{P}, dims::Union{Integer, AbstractUnitRange}...) where {P <: Point}
    res = Array{P}(undef, dims...)
    for i in 1:length(res)
      res[i] = zero(P)
    end
    res
  end

  *(p::Point, a::Real) = a * p
  \(a::Real, p::Point),  = p / a

  abs(p::Point) = sqrt(abs2(p))
  update(p::Point) = p + rand(p)

  include("Point1d.jl")
  include("Point2d.jl")
end

abstract type Point end

mutable struct Point1D <: Point
  x::Float64
end

mutable struct Point2D <: Point
  x::Float64
  y::Float64
end


zeros(A::AbstractArray{P}) where {P <: Point} = zeros(P, size(A))
