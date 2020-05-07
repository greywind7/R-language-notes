# ***********************Lattice plots***********************
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

# xyplot(y ~x | f * g, data)
# This is a formula notation. x,y are axes, and f,g are factors
xyplot(Ozone ~ Wind, data = airquality)
# multiple graphs
airquality <- transform(airquality, Month = factor(Month))
xyplot(Ozone~Wind | Month, data = airquality, layout = c(5,1))
# lattice plots return objects of a class trellis or smth which can be stored in a variable
# youcan make a custom panel function

# ***********************ggplot2***********************
library(ggplot2)
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
# geom attribute makes lines of sorts ig
# Saving plots in higher qualities
plot <- qplot(log(hwy),data = mpg, geom = "density", color = drv)
ggsave(plot, file = "myplot.png", dpi = 1000)
# *************************************************************