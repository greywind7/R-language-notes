# ***********************Base plots***********************
# plot() and hist() basically initialize the graph system
library(datasets)
# break argument is for the number of intervals
hist(airquality$Ozone)
# barplot() creates a bar graph
# boxplot() helps to make boxplots
airquality <- transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab = "month", ylab = "ozone")

# par() function specifies global graphics parameters
# Some important base graphics parameters
# + pch: plotting symbol
# + lty: Line type
# + lwd: Line width
# + col: plotting color (passing a factor will automatically set color)
# + xlab: x-axis
# + ylab: y-axis
# + las: orientations of axis
# + bg: background color
# + mar: margin
# + oma: outer margin
# + mfrow: no. of plots per row,col (filled row wise)
# + mfcol: no. of plots per row,col (filled col wise)

# Base plotting functions
# + plot() makes a scatterplot, type = "n" make it without pts which you can add ass you keep working
# + lines() adds lines to a plot
# + text() adds text labels using x,y coordinates
# + title() add annotations to x,y labels
# + mtext() adds arbitary text to the margins
# + axis() adding axis ticks/labels

with(airquality,plot(Wind,Ozone))
title(main = "Ozone and wind in New York Shitty")
# Sunsetting to make specific points specific color
with(subset(airquality, Month == 5), points(Wind,Ozone,col = "blue"))
# adding a refression line
model <- lm(Ozone ~ Wind, airquality)
abline(model, lwd = 2)
# example(points) to see different points in console
# legend() to put legend in any corner

# Plotting multiple graphs
par(mfcol = c(1,2))
plot(rnorm(100), rnorm(100), pch = 20)
plot(rnorm(100), rpois(100,3), pch = 17)
par(mfcol = c(1,1))

# Adding step by step
x <- rnorm(100)
y <- x + rnorm(100)
g <- gl(2,50, labels = c("Male", "Female"))
plot(x,y, type = 'n')
points(x[g == 'Male'], y[g == 'Male'], col = "Blue", pch = 20)
points(x[g == 'Female'], y[g == 'Female'], col = "Red", pch = 20)

# Exporting graphs
# use a fn like pdf(),png(),jpeg(),bmp() create graph, dev.off() to exit. Simple lol
# dev.copy() to copy a screen plot to a device or smth

# ***********************Extras***********************
# abline() draws a line on the graph
# rug() makes a distribution at the base
# dev.cur() to see the current, dev.set() to set a device
# dev.copy() to copt plot, dev.off() to close a file
# ************************************************************