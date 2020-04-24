# ************************Functions************************
# By default the last expression is returned
# Logical statements can be stored in vectors as logical vectors
# You can add removeNA argument
# Patial matching exists for argument names
# Syntax
above <- function(x,n){
    use <- x > n
    x[use]
}
above(1:10,5)
# There is a ... argument

# ************************Loop Func.************************
# lapply() takes a list as an argument and does stuff to it
# sapply() is similar to lapply() but it tries to simplfy the result
# It returns a list but if all elements are of same length then a matrix
x <- list(a = 1:5, b = rnorm(10))
lapply(x, mean)
# mapply() works on multiple arguments
mapply(rep, 1:4, 4:1)
# tapply() works on ranges, like factors of a vector
# apply() is basically used on a matrix or an array with more than one dimension
# It collapses a diimension of an array
y <- matrix(rnorm(200),20,10)
apply(y,2,mean)
# split() breaks a vector into groups based on factors
z <- c(rnorm(10),runif(10),rnorm(10,1))
f <- gl(3,10)
split(z,f)
# It breaks, tapply() does a function to it
# further uses
library(datasets)
s <- split(airquality, airquality$Month)
sapply(s, function(x) colMeans(x[,c("Ozone","Solar.R","Wind")],na.rm = T))
# multiple factors
f1 <- gl(2,5)
f2 <- gl(5,2)
split(z,list(f1,f2))
# tapply() example from exercise
f <- factor(iris$Species)
tapply(iris$Sepal.Length,f,function(x) round(mean(x)))
# drop argument to remove empty levels
# interaction() is automatically called

# ************************Extras************************
# runif, it generates random variables between a range
# Anonymous functions, short snippet functions
# The are declared where a fuunction argument is expected
lapply(1:5, function(elt) elt^2)
# any() returns true if any value is true
# all() returns true if all is true
# which() incides which are true 
# gl() generates factor levels
# interaction() takes two factors and combines them
# datasets library has datasets
# rowSums,rowMeans,colSums,colMeans
# na.rm in functions
# with() is a useful function that can be used with dataframes

# ************************Date,Time************************
# Times are represented by POSIXct or POSIXlt classes
# ct stores a very big integer (as a vector)
# lt stores many underlying informations (as a list)
tm <- Sys.time()
t2 <- as.POSIXlt(tm)
names(unclass(t2))
# Date format is yyyy-mm-dd
dt <- as.Date('2001-07-27')
# strptim() to convert a string to time
# Generic functions on date and time
# + weekdays
# + months
# + quarters
# *************************************************************