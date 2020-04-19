# ********************Intro********************
# Data types classes
# 1.Character
# 2.Numeric 
# 3.Integer
# 4.Complex
# 5.Logical

# All numbers by default are numeric
# To explicitly use an integer use L suffix
# Special number Inf for infinity, NAN for undefined
# NA for missing value, isna() isnan() tocheck

# attributes() to check the attributes of an object
# args() function gives all arguments of a function
# ?<command> to get specific help
# ??<stuff> to get general help
# Connections made using file() gzflie() bzfile() url()

# ********************Vectors********************
# Most basic object which contain objects of the same type

# c() is a concatenate function
x <- c(1,2,3,4)

# A list method (it is inclusive on both ends)
z <- 1:10

# vector() function creates a vector of a given length
y <- vector('numeric' , length = 10)

# Coersion: When differnt stuff is converted to different stuff
# String > Numeric > Logical
# forced conversion (casting)
as.logical(y)

# ********************List********************
# Can have objects of different classes
# Is made using list() function
lst <- list(1, TRUE, 'hi')
# They are separated by double brackets

# ********************Matrices********************
# by default matrix are filled by columns
# method 1 matrix() function
m <- matrix(1:10, nrow = 2, ncol = 5)
dim(m) <- c(5,2)

# method 2 rbind() colbind()
# They bind vectors by column or rows
x1 = 10:12
y1 = 1:3

m1 <- rbind(x1,y1)
m2 <- cbind(x1,y1)

# ********************Factors********************
# They are used to store categorical data
# They can be ordered or unordered
# By default levels are in alphabetical order,but it can be changed
fac <- factor(c('yes','yes','no','no','yes'))
levels(fac) <- c('yes','no')
# table() gives the count
table(fac)
# unclass() gives the integers
unclass(fac)

# ********************Data Frames********************
# This is basically a table
# Each column is a list
# They have an attribute row.names but its usually a number
# We usually load data by read.table read.csv
# data.matrix() function creates a matrix from data frame
# Coersion happens though
xdta <- data.frame(foo = 1:4, bar = c(T,T,F,F))
xdta

# ********************Names********************
# They are names for elements or anything else
# Vectors
eg <- 1:3
names(eg) <- c('a','b','c')
# Lists
nL <- list(name = "Ra's", age = Inf, gender = "Male")
# Matrix, first row, then column
mN <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(mN) <- list(c("a",'b'), c('x','y'))

# ********************Reading Writing Data********************
# read.table and read.csv read file and return a data frame
# readLines to read lines of text file
# source to read R source file
# load for reading in saved workspace
# check arguments and help page of read.table
# readLines() function reads line by line
# dput() function dget() fn dump()
# *********************************************