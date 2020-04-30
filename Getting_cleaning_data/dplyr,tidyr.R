# ********************dplyr library********************
library('data.table')
library(dplyr)
# data should be loaded in a form called data frame tbl
# It prints the data better lol
dt <- tbl_df(mtcars)
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

# ********************tidyr,readr********************
# gather() takes column name and makes it a variable
x <- data.frame(al = LETTERS[1:5], m = sample(3:7,5), f = sample(0:4))
library(tidyr)
gather(x,sex,grade,-al)
# separate() breaks a column in two. By default alphabets and numerics are separated
y <- data.frame(al = LETTERS[1:5], m_1 = sample(3:7,5), f_1 = sample(0:4),m_2 = sample(3:7,5), f_2 = sample(0:4))
y %>% gather(sex_class,grade,-al) %>% separate(sex_class,c('sex','class')) 
# spread() makes column of the key and adds value
library(readr)
# parse_number() extracts number from the string

# ********************extras********************
# n() and n_distinct() are faster length() and distinct in dplyr.
# n() can only be used in other dplyr functions 
n_distinct(sample(1:20, replace = T))
# quantile() is used to split data
# View() to see the entire table in dplyr
# ****************************************************