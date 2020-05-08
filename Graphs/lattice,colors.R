# ***********************Lattice plots***********************
# Margins and spacing are automatically adjusted
library(lattice)
library(ggplot2)
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
y = rnorm(100,100,25)
x = rnorm(100,100,5)
f = factor(sample(c("hi","lo"),100, replace = T))
p <- xyplot(y ~ x | f, panel = function(x, y, ...) {
    panel.xyplot(x, y, ...)  ## First call the default panel function for 'xyplot'
    panel.abline(h = median(y), lty = 2)  ## Add a horizontal line at the median
})
print(p)
# Multiple panels example with ggplot2 diamonds data
myxlab <- "Carat"
myylab <- "Price"
mymain <- "Diamonds are Sparkly!"
xyplot(price~carat|color*cut,data=diamonds,strip=FALSE,pch=20,xlab=myxlab,ylab=myylab,main=mymain)
# strip labels the plot

# ***********************Working with colors***********************
library(grDevices)
colors() # Lists all the available colors as a string
# colorRamp() takes a list of colors and creates a fn which blends taking in args from 0 to 1
# the object made by this can take more than one argument
# colorRampPalette() works similarly but takes integer values
# These are three length, 4th can be given by alpha argument
# This integer specified makes the function return a hex color vector
# Taken from documentation to display the colors
showMe <- function(cv){
    myarg <- deparse(substitute(cv))
    z<- outer( 1:20,1:20, "+")
    obj<- list( x=1:20,y=1:20,z=z )
    image(obj, col=cv, main=myarg  )
}
# You can take the rgb() function to take the rgb values and optional alpha to make colors
library(RColorBrewer)
display.brewer.all() # displays all the colors
display.brewer.pal(n = 3, name = "Dark2") # Displays a specific pallete
# brewer.pal() takes a number and a category and returns a palette. Can be used with above fns
# *****************************************************************