print_est_properties = function(estimates, theta_true) {
  avg.error = mean(estimates) - theta_true
  sample.var = var(estimates)
  avg.sq.error = var(estimates)+(mean(estimates)-theta_true)^2
  cat("average error =", formatC(avg.error, digits=3),
      ", sample variance =", formatC(var(estimates), digits=3),
      ", average squared error =", formatC(avg.sq.error, digits=3))
}
# the following 5 lines are copied from code above
xvalues = runif(10000)
xsamples = matrix(xvalues, nrow=1000)
sample.mean = apply(xsamples, 1, mean)
sample.median = apply(xsamples, 1, median)
theta.mle = apply(xsamples, 1, max)
print_est_properties(sample.median, 0.5) # sample median
print_est_properties(sample.mean, 0.5) # MOM estimate
print_est_properties(theta.mle/2, 0.5) # MLE estimate