using DataFrames, RDatasets, Statistics

iris_dataframe = dataset("datasets", "iris")
iris_dataframe[:id] = 1:size(iris_dataframe, 1)

#
# sort
#
sort(iris_dataframe, [order(:Species, by = uppercase), order(:PetalLength, rev = true)])

#
# mean
#
# iris_stack = stack(iris_dataframe)
iris_stackdf = stackdf(iris_dataframe)

iris_mean_stackdf = by(iris_stackdf, [:variable, :Species], df -> DataFrame(iris_mean = mean(df[:value])))

unstack(iris_mean_stackdf, :Species, :iris_mean)
