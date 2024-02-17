xvalues = runif(10000)
xsamples = matrix(xvalues, nrow=1000)
sample.mean = apply(xsamples, 1, mean)
sample.median = apply(xsamples, 1, median)

theta.mle = apply(xsamples, 1, max)
par(mfrow=c(1,3))
hist(sample.median, xlim=c(0,1), ylim=c(0,12), freq=F,
     ylab="density", xlab="Sample median")
abline(v=0.5, col="red", lty=2)
legend("topleft", c("truth"), col=c("red"), lty=2)
hist(sample.mean, xlim=c(0,1), ylim=c(0,12), freq=F,
     ylab="density", xlab="MOM")
abline(v=0.5, col="red", lty=2)
hist(theta.mle/2, xlim=c(0,1), ylim=c(0,12), freq=F,
     ylab="density", xlab="MLE")
abline(v=0.5, col="red", lty=2)

par(mfrow=c(1,1))
boxplot(sample.median, sample.mean, theta.mle/2,
        names=c("Sample median", "MOM", "MLE"),
        main="Estimators of population median: Unif(0,1) for n=10")
abline(h=0.5, col="red", lty=2)
legend("topright", c("truth"), col=c("red"), lty=2)