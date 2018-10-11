#
# Type and Calculation
#
x = 42
typeof(42)        # => Int64
isa(x, Int64)     # => true
Int <: Integer    # => true
supertype(Int64)  # => Signed
subtypes(Integer) # => [Bool, Signed, Unsigned]

promote(1, 1.0) # => (1.0, 1.0)
promote_type(Int64, Float64) # => Float64

1 / 0  # => Inf
-1 / 0 # => -Inf
0 / 0  # => NaN

big(0.1) # => 1.000000000000000055511151231257827021181583404541015625e-01
big"0.1" # => 1.000000000000000000000000000000000000000000000000000000000000000000000000000002e-01
big(0.1) != big"0.1" # => true

2//4 # => 1//2
1//2 + 1//3 # => 5//6

#
# Array and Bector
#
a = [1 2 3]
b1 = [1, 2, 3]
b2 = [
  1
  2
  3
]
b1 == b2

c1 = [1 2 3; 4 5 6; 7 8 9]
c2 = [
  1 2 3
  4 5 6
  7 8 9
]
c1 == c2

mat = [
  1 4 7
  2 5 8
  3 6 9
]
mat[2, 1]   # => 2
mat[1, end] # => 7
mat[end]    # => 9
mat[1:2, 2:3] # =>
# 4 7
# 5 8
sub_view = view(mat, 1:2, 1:2) # @veiw mat[1:2, 1:2]
sub_view[1] = 0
mat # =>
# 0 4 7
# 2 5 8
# 3 6 9
length(mat)
size(mat)

A = [
  1 2
  2 1
]
B = [
  10 10
  10 10
]
A * B # =>
# 30  30
# 30  30
A .* B # =>
# 10  20
# 20  10

in(1, [1, 2, 3])
1 in [1, 2, 3]

isequal(2).((2, 3)) # => (true, false)
iseven.((2, 3))     # => (true, false)
isodd.((2, 3))      # => (false, true)
findfirst(iseven, [1, 2, 3, 2, 1]) # === findnext(iseven, [1, 2, 3, 2, 1], firstindex([1, 2, 3, 2, 1]))
findlast(iseven, [1, 2, 3, 2, 1])  # === findprev(iseven, [1, 2, 3, 2, 1], lastindex([1, 2, 3, 2, 1]))

#
# Char and String
#
"sin(1) = $(sin(1))" # => "sin(1) = 0.8414709848078965"
split("Hello, Julia Lang!", [',', ' '], keepempty = false) # => ["Hello", "Julia", "Lang!"]
replace("I use Python", "Python" => "Julia")
'a' in "Julia"
