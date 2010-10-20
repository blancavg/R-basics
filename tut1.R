#! /usr/bin/Rscript --vanilla

# se corre en el shell

#http://www.cyclismo.org/tutorial/R/types.html#strings
###################### el primero
args <- commandArgs(TRUE)

sink("a.out")
pinki <- read.table("simplesp.table",header=TRUE)
msg <- "Summary: pinki"
msg
summary(pinki)
msg <- "pinki"
msg
pinki


x11()
#x <- rnorm(50)
#y <- rnorm(x)
#plot(x,y)

#savePlot("./myCoolPlot.jpg", type="jpeg")

###################### Factors

tree <- read.csv(file="trees91.csv",header=TRUE,sep=",")

msg <- "Summary: tree"
msg
summary(tree)
msg <- "Summary CHBR col"
msg
summary(tree$CHBR)

msg <- "Factors"
msg
#factors
#consideremos que la columna C es un factor
msg <- "C column"
msg
tree$C
msg <- "Summary C col"
summary(tree$C)

msg <- "Se establece C como factores"
msg
tree$C <- factor(tree$C)

msg <- "Summary C col"
msg
summary(tree$C)
msg <- "C Levels"
msg
levels(tree$C)
###################### Data frames
msg <- "Data frames"
msg
# ejemplo: construir una tabla de tres columnas
a <- c(1,2,3,4)
b <- c(2,4,6,8)
levels <- factor(c("A","B","A","B"))
bubba <- data.frame(first=a,second=b,f=levels)
bubba
summary(bubba)
bubba$first
bubba$second
bubba$f   

###################### Tables
# One Way Tables
msg <- "One Way Tables"
msg
a <- factor(c("A","A","B","A","B","B","C","A","C"))
results <- table(a)
results
attributes(results)
summary(results)
###################### Tables
# Two Way Tables
msg <- "Two Way Tables"
msg
a <- c("Sometimes","Sometimes","Never","Always","Always","Sometimes","Sometimes","Never")
b <- c("Maybe","Maybe","Yes","Maybe","Maybe","No","Yes","No")
results <- table(a,b)
results

# Two Way Tables manually
msg <- "Two Way Tables Manually"
msg
sexsmoke<-matrix(c(70,120,65,140),ncol=2,byrow=TRUE)
rownames(sexsmoke)<-c("male","female")
colnames(sexsmoke)<-c("smoke","nosmoke")
sexsmoke <- as.table(sexsmoke)
sexsmoke

###################### Basic operations an numerical descriptions
msg <- "Basic operations"
msg
a <- c(1,2,3,4,5)
a
a + 5
a - 10
a*4
a/5
# saving the results in another vector
msg <- "Saving in another vector"
msg
b <- a + 10
b

#square root, find e raised to each number, the logarithm, etc
sqrt(a)
exp(a)
log(a)
exp(log(a))

# By combining operations and using parentheses
c <- (a + sqrt(a))/(exp(2)+1)
c

# with vector arguments
a + b

# To get a list of all of the variables
ls()

# if you look at the minimum of two vectors
a <- c(1,-2,3,-4)
b <- c(-1,2,-3,4)
min(a,b)
pmin(a,b)

# Basic Numerical Descriptions
tree <- read.csv(file="trees91.csv",header=TRUE,sep=",")
names(tree)

#Each column in the data frame can be accessed as a vector (column LFBM)
tree$LFBM

# mean, median, quantiles, minimum, maximum, variance, and standard deviation of a set of numbers
mean(tree$LFBM)
median(tree$LFBM)
quantile(tree$LFBM)
min(tree$LFBM)
max(tree$LFBM)
var(tree$LFBM)
sd(tree$LFBM)

# print out the min, max, mean, median, and quantiles
summary(tree$LFBM)

# if you give it a data frame it will print out the summary for every vector in the data frame
summary(tree)

###################### Basic Probability Distributions
msg <- "Basic Probability Distributions"
msg
#help.search("distribution")
#help(Normal)
# dnorm Given a set of values it returns the height of the probability distribution at each point.
dnorm(0)
dnorm(0)*sqrt(2*pi)
dnorm(0,mean=4)    
dnorm(0,mean=4,sd=10)
v <- c(0,1,2)
dnorm(v)
#
#x <- seq(-20,20,by=.1)
x <- seq(-15,15,by=0.1)
y <- dnorm(x) 
plot(x,y)
savePlot("./dnorm1.jpg", type="jpeg")

y <- dnorm(x,mean=2.5,sd=0.1) 
plot(x,y)
savePlot("./dnorm2.jpg", type="jpeg")
######################
sink()
plot(1)
dev.off()

q(status=1)

