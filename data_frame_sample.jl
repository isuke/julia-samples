# not using DataArrays for 1.0

using DataFrames

# array

array = [missing, 1.1, 2.2]

array_sum = sum(skipmissing(array))

println(array_sum)

# magrix

dmatrix = [1 2; 3 4; 5 missing]

println(dmatrix)

# DataFrame

df = DataFrame(
  Name = ["Ajava Rhodiumhi", "Las Hushjoin"],
  count = [14.04, 17.3],
  os = ["Ubuntu", "Mint"]
)

println(df)
println(size(df))
println(df[:Name])
println(df.Name)
println(names(df))
println(describe(df))
