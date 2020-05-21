# integrate() fn can calculate definite integrals
# integrate the curve and equate to the percentile to get the percentile point
library(quint)
?qunif


x <- 1:4
p <- x/sum(x)
temp <- rbind(x, p)
rownames(temp) <- c("X", "Prob")
temp

mean(x*p)
sum(x*p)
