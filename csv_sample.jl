using DataFrames, CSV


table = CSV.File("iris.csv", header = true, delim = ',')

println(typeof(table))

data_frame = CSV.File("iris.csv", header = true, delim = ',') |> DataFrame

println(typeof(data_frame))

CSV.write("iris.tsv", data_frame, delim = '\t')
