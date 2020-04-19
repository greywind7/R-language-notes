# ********************Control Structures********************

#********************Conditionals********************
# Pretty straight forward
# it can also be used as an assignment conditional
y <- if(2 < 1){
  420
} else {
  69
}
y

# ********************For Loops********************
# Kind of similar to that in Python
for(i in 1:10){
  print(i)
}
# seq_len is equivalent to range()
# seq_along() function is equivalent to range(length(x))
vec <- c('a','b','c','d')
for(i in seq_along(vec)) print(vec[i])
# Similar to python you can loop through vectors
# Nested for loop
x <- matrix(1:6,2,3)
for(i in seq_len(nrow(x))){
  for (j in seq_len(ncol(x))) {
    print(x[i,j])
  }
}
# ********************While loop********************
# Just the way you know it
count <- 0
while (count < 10) {
  print(count)
  count <- count+1
}
# ********************Repeat loop********************
# It is basically an infinite loop
# Use break as usual to loop out
# next is continue in R
# *************************************************