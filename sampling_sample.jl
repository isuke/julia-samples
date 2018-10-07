using Distributions

wv = Weights([1., 2., 3.], 6.)

println(eltype(wv))
println(length(wv))
println(isempty(wv))
println(values(wv))
println(sum(wv))

arr1 = [123, 4234, 23423]

mean(arr1, weights(wv))
var(arr1) # variance
std(arr1) # standard deviation
mean_and_var(arr1)
skewness(arr1)
kurtosis(arr1)
moment(arr1, 3)
span(arr1)
variation(arr1)
sem(arr1)
mad(arr1, normalize = false)
mad(arr1, normalize = false, center = 5)
zscore(arr1)

d = Dirichlet([1.0, 3.0, 5.0])
arr2 = rand(d)
sum(arr2) # => 1.0
entropy(arr2)

arr3 = rand(10)
quantile(arr3)
iqr(arr3)
percentile(arr3, 0.5)
nquantile(arr3, 2)
mode(arr3)

summarystats(arr3)
