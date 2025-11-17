#problem_1
#(a) write a function lcg and generate lcg .

lcg=function(n){ 
            u=vector(length=n)
            m=2^32 
            a=1103515245
            c=12345
            z=as.numeric(Sys.time())*1000

       for(i in 1:n ){
             z=(a*z+c)%%m 
               }
u=z/m 
return(u)
}

#(b) n=100,500,1000 

U100=lcg(100)
U100
U500=lcg(500)
U500
U=1000=lcg(1000)
U1000

#(c) Draw histogram 

par(mfrow=c(3,1)) 
hist(U100,breaks=10,col="red",main="histogram for U100")
hist(U500,breaks=10,col="green", main="histogram for U500") 
hist(U1000,breaks=10,col="yellow",main="histogram for U1000")


#(d)
ks.test(U100,'punif')
ks.test(U500,'punif')
ks.test(U1000,'punif')











