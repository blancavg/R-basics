#! /usr/bin/Rscript --vanilla

# se corre en el shell

#http://www.cyclismo.org/tutorial/R/types.html#strings
###################### el primero
args <- commandArgs(TRUE)

sink("b.out")
#x11()
png()

###################### Basic Probability Distributions
msg <- "Basic Probability Distributions"
msg
#help.search("distribution")
#help(Normal)
# dnorm Given a set of values it returns the height of the probability distribution at each point.
dnorm(0)
dnorm(0)*sqrt(2*pi)
dnorm(0,mean=4)    
dnorm(0,mean=65.5,sd=2.5)
v <- c(0,1,2)
dnorm(v)
#
#x <- seq(-20,20,by=.1)
x <- seq(-15,15,by=0.1)
y <- dnorm(x) 
plot(x,y)
#savePlot("./dnorm1.jpg", type="jpeg")

y <- dnorm(x,mean=2.5,sd=0.1) 
plot(x,y)
#savePlot("./dnorm2.jpg", type="jpeg")
######################
sink()
plot(1)
dev.off()

q(status=1)

