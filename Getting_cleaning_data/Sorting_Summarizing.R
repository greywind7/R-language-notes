# ********************Sorting********************
x <- sample(1:20)
# sort() function sorts, decreasing attribute for reverse order
sort(x)
sort(x, decreasing = T)
# when there are missing values, you can put them at the end using na.last attr.
# sorting a dataframe using a column calues using order()
y <- data.frame(v1 = sample(1:7, rep = T), v2 = sample(11:17, rep = T), v3 = sample(111:117, rep = T))
z <- y
y[order(y$v1,y$v2),]
# Same thing can be done using plyr, for decreasing, desc fn
library(plyr)
arrange(z,v1)
arrange(z,desc(v1),desc(v2))

# ********************Reshaping,Summarizing********************
# melt() melts and reshapes a data frame
library(data.table)
mtcars$carnames <- rownames(mtcars)
carMelt <- melt(setDT(mtcars), id=c("carnames","gear","cyl"), measure.vars = c('mpg','hp'))
carMelt
# casting data frames
# It basically means summarizing data frames
cylData <- dcast(carMelt, cyl ~ variable)
dcast(carMelt, cyl ~ variable, mean)
# Summarizing counts using plyr
data("InsectSprays")
# Counting number of insects of each spray
ddply(InsectSprays,.(spray),summarize, sum=sum(count))

# ********************Extra stuff********************
# Adding rows/cols
z$v4 <- round(rnorm(7,10,7))
# v4 didnt exist before but we added so it does now
# same can be done using cbind and rbind as well
# xtabs() command is useful to see relationships
data(mtcars)
head(mtcars)
ftable(xtabs(mpg ~ cyl + hp,data =mtcars))
# ifelse() is like tertiary operator in R
# cut() and cut2() can be used to make categorical variables, can be used with quantiles
# ceiling() and floor() for SIF and GIF respectively
# merge() function is used to merge two datasets
# join() function can also be used
# intersect() gives common data
# ******************************************************