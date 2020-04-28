# ********************Subsetting basics********************
# [] gives back an object of the same type except matrix
# [[ ]] returns an element of list/data frame
# $ is used to extract an element by name
# Indexing begins from 1 in R

x <- c('a','b','c','d')
x[1]
x[1:3]
# Logical subsetting
x[x > 'a']
# Logical vector
u <- x > 'a'
# Subsetting using a logical vector
x[u]

# ********************Subsetting Lists********************
lst <- list(foo = 1:4, bar = 0.6, baz = 'hello')
# Single brackets will return a list
lst[1]
# Double bracket will return an elemment
lst[[1]]
# $ will return the element associated with that name
# (same as double bracket)
lst$foo
# multiple subsetting, pass a list, only for []
lst[c(1,3)]
# Nested subsetting
lst[[c(1,2)]]
lst[[1]][[2]]
# Partial matching:
# -> $ works like autocomplete in shell
# -> You can simply give first letter and it will match
# -> In [[]] you have to set exact = F
lst$f
lst[['f', exact = F]]
# ********************Subsetting matrix********************
matri <- matrix(1:100, nrow = 10, ncol = 10, byrow = TRUE)
matri
# Use both indices to extract an eleement
matri[1,2]
# Miss indices to extract whole column or row
matri[2,]
matri[,2]
# use drop = FALSE to retain dimensionality
matri[2,3, drop = F]
# ********************Removing missing vsl.********************
# This can also be used with data frames
mvl <- c(1,2,NA,NA,5,6,NA)
bad <- is.na(mvl)
mvl[!bad]
# complete.cases Can be use with multiple objects in arguments
good <- complete.cases(mvl)
mvl[good]
# *********************************************************