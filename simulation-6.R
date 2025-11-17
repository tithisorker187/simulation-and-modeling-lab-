#problem-6

#(a)
set.seed(123)
n=10
mu=2 

sigma=2
nsim=10


means=replicate(nsim,mean(rnorm(n,mu,sigma)))
means
variance=replicate(nsim,var(rnorm(n,mu,sigma)))
variance

#(b) 
sample.mean=mean(means)
sample.mean
# The sample mean=2.149 is an unbiased estimator of the average of the sample 
#means across simulations which is close to the population mean (μ=2)

#(c)for 1000 simulation

hist(replicate(1000,mean(rnorm(n,mu,sigma))),main="Distribution of sample mean(n=10)" ,
   col="lightblue",xlab="sample mean",breaks=30)
abline(v=2,col="red",lwd=3) 

qqnorm(replicate(1000,mean(rnorm(n,mu,sigma))),
    main="qqplot sample-sample Mean(n=10)")

#(d)

#theoritical vs simulation mean variance compare

theo_mean=2
theo_mean
theo_var=sigma^2/n
theo_var

#For n=10
x_bar1=mean(replicate(1000,mean(rnorm(10,2,2))))
x_bar1
var_1=var(replicate(1000,mean(rnorm(10,2,2))))
var_1
c(theo_meanritical_mean=theo_mean, simulation_mean=x_bar1)
c(theo_meanritical_var=theo_var, simulation_var=var_1)




#for n=100

x_bar2=mean(replicate(1000,mean(rnorm(100,2,2))))
x_bar2
var_2=var(replicate(1000,mean(rnorm(100,2,2))))
var_2

c(theo_meanritical_mean=theo_mean, simulation_mean=x_bar2)
c(theo_meanritical_var=theo_var, simulation_var=var_2)

#comment:
#The simulated mean of the sample means is approximately 2.000 in all cases, which is exactly equal to the true population mean μ = 2.
#This confirms that the sample mean is an unbiased estimator of the population mean.
#The variance of the sample mean decreases as sample size increases:
#n = 10   → variance ≈ 0.40
#n = 100  → variance ≈ 0.04


#e)
par(mfrow=c(3,1))
hist(replicate(1000,mean(rnorm(10,2,2))),col="red", main=" histogram for (n=10)")
hist(replicate(1000,mean(rnorm(100,2,2))),col="red", main=" histogram for (n=100)")
hist(replicate(1000,mean(rnorm(1000,2,2))),col="red", main=" histogram for (n=1000)")

#comment : The more sample size increase means comes close to true population mean 



#f)

#for n =100 95% CI 

se=sigma/sqrt(100)
se
mean(abs(replicate(1000,mean(rnorm(100,2,2))-2))<1.96*se)
mean(abs(replicate(1000,mean(rnorm(100,2,2))-2))<2.576*se)

#comment: 
#The printed values are close to 0.95 and 0.99, 
#the simulation confirms that conintervals work as expected.

























