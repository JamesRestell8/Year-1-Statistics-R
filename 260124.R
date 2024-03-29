print("Hello World")
# getwd() gets the working directory
# setwd() sets it to something different than the default
# load("fileName") loads a file - use in console

# quakes will print quakes data

x = c(1,2,3,4,5)

# mean(x)
# median(x)
# fivenum(x) - five number summary of x

hist(quakes) # plots a histogram of data

# seq(0, 2000, 100) makes a list of nums 0-2000 with step 100

hist(quakes, breaks=seq(0, 2000, 100),
     freq=FALSE, xlab="x axis title",
     main='plot title')

plot(quakes) # this is a time plot
y = seq(0, 5, 0.1)
plot(y, y^2, type='l') # type = 'l' makes it a line plot

boxplot(quakes) #box plot

# bottom and top line is min/max excl. outliers
# outliers are indicated with dots
# middle line is median
# other two are lower and upper hinge

# quantile(x, c(0.25, 0.75)) will return the lower quartile and upper quartile
# note that you could choose any decimal and get that quantile returned.

x = seq(-pi, pi, by=0.05)
plot(x, sin(x), type="l", col="blue", # I want a blue line
     xlab="x", ylab="sin(x)",
     main="The sine function")

