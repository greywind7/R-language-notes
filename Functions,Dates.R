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
# apply() is basically used on a matrix or an array with more than one dimension
# It collapses a diimension of an array
y <- matrix(rnorm(200),20,10)
apply(y,2,mean)

# ************************Extras************************
# runif, it generates random variables between a range
# Anonymous functions, short snippet functions
# The are declared where a fuunction argument is expected
lapply(1:5, function(elt) elt^2)
# any() returns true if any value is true
# all() returns true if all is true
# which() incides which are true 
# rowSums,rowMeans,colSums,colMeans

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