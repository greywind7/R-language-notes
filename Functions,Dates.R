# ************************Functions************************
# By default the last expression is returned
# Logical statements can be stored in vectors as logical vectors
# You can add removeNA argument
# Patial matching exists for argument names
# Syntax
add2 <- function(x,y){
  x + y
}

above <- function(x,n){
    use <- x > n
    x[use]
}

above(1:10,5)
# There is a ... argument

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