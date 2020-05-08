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
# geom is an attribute of qplot(). 
# In ggplot() separate geom func can be used to add specific pieces
# sET geom to boxplot to make a boxplot
qplot(displ,hwy, data = mpg, color = drv)
qplot(drv,hwy, data = mpg, color = manufacturer, geom = "boxplot")
# you can make a histogram ussing a single data
# binwidth argument specifies the width of bins
qplot(hwy,data = mpg, fill = drv)
# facets argument helps you to make side by side plots
# variable to the right means one col, left means two col
# replace . to enter label
qplot(displ,hwy, data = mpg, facets = .~drv)
qplot(hwy,data = mpg, facets = drv~.)
# geom_smooth() to make lines
# method specifies different methods, default is best fit
# linetype gives diferent kinds of line. se is the shadow confidence level
qplot(displ,hwy, data = mpg, color = drv,alpha = 0.9) + 
    geom_smooth(method = "lm", linetype = 2, se = F,size = 2)
# Saving plots in higher qualities
plot <- qplot(log(hwy),data = mpg, geom = "density", color = drv)
# ggsave(plot, file = "myplot.png", dpi = 1000)

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
# ggplot doesnt ignore outliers.
# ylim,xlim will ignore outliers and wont show them on graph (blanks)
# coord_cartesian to set limits will not give breaks
# cut() for ranges
# a nice example to sum up
g <- ggplot(mpg,aes(x=displ,y=hwy,color=factor(year)))
g + geom_point()
g + geom_point() + facet_grid(drv~cyl,margins=TRUE)
# Giving the facet a relation, made a biggy graph
# *************************************************************