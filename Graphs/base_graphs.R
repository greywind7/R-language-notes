# ***********************Base plots***********************
# plot() and hist() basically initialize the graph system
library(datasets)
hist(airquality$Ozone)
# boxplot() helps to make boxplots
airquality <- transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab = "month", ylab = "ozone")

# par() function specifies global graphics parameters
# Some important base graphics parameters
# + pch: plotting symbol
# + lty: Line type
# + lwd: Line width
# + col: plotting color
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
# ************************************************************