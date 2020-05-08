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

# ***********************ggplot2***********************
library(ggplot2)
# Basic components of ggplot2 plot
# + A data frame
# + Aesthetic mappings
# + geoms -- objects like points, lines, shapes
# + facets -- for conditional plots
# + stats -- stat. trans. like binning, quantiles, smoothing
# + scales -- what scale an aesthetic map uses
# + coordinate systems
# qplot() is the basic function of ggplot2
# color to give different colors. shape to give different shapes
qplot(displ,hwy, data = mpg)
qplot(displ,hwy, data = mpg, color = drv)
# you can make a histogram ussing a single data
qplot(hwy,data = mpg, fill = drv)
# facets argument helps you to make side by side plots
# variable to the right means one col, left means two col
# replace . to enter label
qplot(displ,hwy, data = mpg, facets = .~drv)
qplot(hwy,data = mpg, facets = drv~.)
# geom_smooth() to make linear lines
qplot(displ,hwy, data = mpg, color = drv) + geom_smooth(method = "lm")
# Saving plots in higher qualities
plot <- qplot(log(hwy),data = mpg, geom = "density", color = drv)
ggsave(plot, file = "myplot.png", dpi = 1000)

# Using ggplot to systematically make a plot
g <- ggplot(mpg, aes(displ,hwy))
# adding points
g <- g + geom_point(aes(color = drv),alpha = 1/2)
# Adding more layers: smooth
g + geom_smooth()
g <- g + geom_smooth(method = "lm")
# adding facets
g + facet_grid(.~drv)
# annotations using xlab(), ylab(), labs(), ggtitle()
# theme() to make changes globally
# two std themes theme_gray() theme_bw()
# modyfying aesthetics
# color, size and alpha(transparency) in points
# linetype, method, se in smooth
# base_family in different themes
# axis limits
# ylim,xlim, coord_cartesian to set limits
# cut() for ranges
# *************************************************************