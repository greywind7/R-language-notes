# ***********************Lattice plots***********************
# Margins and spacing are automatically adjusted
library(lattice)
# Makes plot in single calls
# Main functions are
# + xyplot -- main fn for scatterplots
# + bwplot -- basically boxplots
# + histogram
# + stripplot -- boxplot with actual points
# + dotplot -- plot dots on violin strings
# + splom -- scatterplot matrix
# + levelplot, contourplot -- plotting image data
# The attributes of base plots seem to apply

# xyplot(y ~x | f * g, data)
# * represents the intersection
# This is a formula notation. x,y are axes, and f,g are factors
xyplot(Ozone ~ Wind, data = airquality)
# multiple graphs
airquality <- transform(airquality, Month = factor(Month))
# This could have been skipped using as.factor()
xyplot(Ozone~Wind | Month, data = airquality, layout = c(5,1))
# lattice plots return objects of a class trellis or smth which can be stored in a variable
# youcan make a custom panel function
# example:
p <- xyplot(y ~ x | f, panel = function(x, y, ...) {
    panel.xyplot(x, y, ...)  ## First call the default panel function for 'xyplot'
    panel.abline(h = median(y), lty = 2)  ## Add a horizontal line at the median
})
# Multiple panels example with ggplot2 diamonds data
myxlab <- "Carat"
myylab <- "Price"
mymain <- "Diamonds are Sparkly!"
xyplot(price~carat|color*cut,data=diamonds,strip=FALSE,pch=20,xlab=myxlab,ylab=myylab,main=mymain)
# strip labels the plot
# *************************************************************