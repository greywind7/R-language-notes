# ************************Simulation************************
# ## Generating random numbers
# All probability dist funcs have 4 funcs assocoated with them
# + d for density
# + r for random
# + p for cumulative
# + q for quantile
# Random numbers are pseudo random numbers
# Can be reporduced with a seed
# Seed can be set by set.seed()
set.seed(17)
rnorm(17)
# rpois() is for random poisson distribution

# ## Simulating a Linear Model
x <- rnorm(100)
e <- rnorm(100,0,2)
y <- 0.5 + 2 * x + e
plot(x,y)

# sample() function gives a permulation
# true attribute gives repitition
sample(1:17, 7)
sample(1:17, 7, replace = T)
 
# ************************Profiling************************
# The process of finding out where time is being spent
# system.time() function gives the time to run an expression
system.time(mean(1:100000000))

hi <- function(n){
    i <- 1:n
    1/outer(i-1,i,'+')
}
system.time(svd(hi(1000)))
# Rprof() and summaryRprof()
# **********************************************************