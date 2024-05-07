xvalues = rexp(10000, rate=1)
xsamples = matrix(xvalues, nrow=1000)

sums = rowSums(xsamples)
rowAverages = sums/10
mles = 1/rowAverages

sampleMedians = seq(0,0,1000)
MLEmedians = seq(0,0,1000)

for (row in 1:nrow(xsamples))
{
  MLEmedians[row] = log(2) / mles[row]
  sampleMedians[row] = median(xsamples[row,])
}

boxplot(sampleMedians, MLEmedians,
        names = c("Sample Median", "MLE Median"))