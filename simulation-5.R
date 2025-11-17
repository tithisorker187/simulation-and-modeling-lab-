#problem-5

#(a)
x.norm=rnorm(1000,mean=10,sd=2)
library(MASS)
fitdistr(x.norm,"normal")$estimate

#(b)
x.weibull=rweibull(1000,shape=2.1,scale=1.1)
x.weibull

fitdistr(x.weibull,"weibull")$estimate

#(c)

x.gamma=rgamma(1000,rate=0.5,shape=3.5)
x.gamma
fitdistr(x.gamma,"gamma")

