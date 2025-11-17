#problem-4 

#(a)

x=rpois(1000,lambda=10)
win.graph()
par(mfrow=c(1,2))

hist(x)
boxplot(x)
summary(x)
mean(x)
var(x)

#The histogram confirms that the Poisson(10) distribution follows its expected shape.
#The boxplot shows data spread and possible outliers.
#The summary statistics validate that the mean and variance are close to λ (10), 
#as expected for a Poisson distribution.

#(b)
y=rexp(n=1000,rate=0.2)
win.graph()
par(mfrow=c(1,2))
hist(y)
boxplot(y)
summary(y)
mean(y)
var(y)

#comment : 
#From The Histogram we see that a right-skewed distribution, 
#as the exponential distribution has a longer tail on the right.
#The boxplot will show the range and distribution, 
#highlighting the right skew with a longer upper whisker.
#The mean and variance is 4.93 and 25.25which is close to 5 and 25.













