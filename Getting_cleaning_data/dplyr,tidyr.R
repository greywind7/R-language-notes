# ********************dplyr library********************
library('data.table')
library(dplyr)
dt <- copy(mtcars)
# selecting using column names
dt$carnames <- rownames(dt)
# you can use select() to view columns 
select(dt, mpg:drat)
# filter() for subsetting rows
filter(dt, mpg > 20 & wt > 2)
# arrange() to arrange data according to a variable, desc() present
arrange(dt, -mpg)
# rename() function to change names
dt <- rename(dt,mileage = mpg)
# mutate() adds columns
dt <- mutate(dt, nums = seq(nrow(dt)))
# group_by() to group colums
dt$vs <- factor(dt$vs)
summarize(group_by(mtcars,am),mpg=mean(mpg))
# %>% is a pipeline operator which works to do buncha ops on a data frame all at once 
# ****************************************************