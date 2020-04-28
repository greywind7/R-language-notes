# ************************data.table************************
# data.table is a faster library for data frames
library(data.table)
dt <- data.table(x=rnorm(9), y=rep(c('a','b','c'),each = 3),z=rnorm(9))
# tables() function to see all tables in memory
# Similar subsetting to data.frame
# Cannot subset colums like dt[,c(1,2)]
# It is working tho lol
# You can pass functions to the second index
dt[,mean(x)]
# adding new colums
dt[,w:=z^2]
# data tables dont make copies, need copy function
# using expressions; expressions return the last value
dt[,m:={tmp <- (x+z); log2(tmp+5)}]
dt[,a:= x>0]
# by argument, works like by in sql hehe
dt[,b:=mean(x+w),by=a]
# .N is the count of sql
dt2 <- data.table(x=sample(letters[1:3],1E5,T))
dt2[,.N,by=x]
# keys can be used to quickly subset
dt3 <- data.table(x=rep(c('a','b','c','d'),each = 100), y = rnorm(400))
setkey(dt3,x)
dt3['a']
# keys can be used to merge
dt4 <- data.table(x=c('a','a','b','dt1'),y = 1:4)
dt5 <- data.table(x=c('a','b','c'),z=5:7)
setkey(dt4,x); setkey(dt5,x)
merge(dt4,dt5)
# fread() is the function used to read files as data.table 
# It is much faster than read.table or read.csv
# ************************************************************