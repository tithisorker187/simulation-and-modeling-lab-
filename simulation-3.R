#problem-3 

#(a) 

X=seq(-5,10,by=0.1)
X
Pdf.X=dnorm(X,3,2)

#(b) 
plot(X,Pdf.X)

#(c)

nor.X=rnorm(1000,3,2)
summary(nor.X)

hist(nor.X)

#comment : 
#The first plot (PDF) shows the ideal normal curve.
#The histogram shows the actual distribution of 1,000 generated values.
#The histogram approximates the normal curve, 
#confirming that the generated numbers follow the expected normal distribution.