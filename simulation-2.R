#problem-2
#(a)
invt.weib=function(n,beta,eta){
     U=runif(n)
      X=eta*(-log(1-U))^(1/beta)
return(X)
}

#(b)

X.weib=invt.weib(100,2,10)
X.weib

library(MASS)
fitdistr(X.weib,"weibull")

#(c)

n=seq(10,3000,50)
beta.true=2.0
eta.true=10.0
beta.hat=array()
eta.hat=array()

           for(i in 1:length(n)){
                       X.weib=invt.weib(n[i],beta.true,eta.true)
beta.hat[i]=as.numeric(fitdistr(X.weib,"weibull")$estimate[1])
eta.hat[i]=as.numeric(fitdistr(X.weib,"weibull")$estimate[2])
}
plot(n,beta.hat,main="plot of the MLE of beta")
plot(n,eta.hat,main="plot of the MLE of eta")

















