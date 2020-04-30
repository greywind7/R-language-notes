# ********************string manipulations********************
# tolower() changes to lower case
tolower("XYZ")
# strsplit() to split string using smth
strsplit("x.y",'\\.')
# sub() substitutes first occurrence given character with specified character
# gsub() substitutues all
gsub('\\.','$',"x.y.x")
# grep() to search instances of the strings
grep('a',rep(c('a b','b','c'), 3), value = T)
# grepl() gives the logical vector of instances
grepl('a',rep(c('a','b','c'), 3))
# substring() is well ... substring \._./
substring("Riki boye best",1,9)
# str_trim() removes preceding or trailing whitespaces
library(stringr)
str_trim("    Henlo      ")
# ********************regex********************
# Set of metachars to find literals. ^ is for start $ is for end
# Character class [] matches any of the chars in the list
# [0-9], [a-z], [A-Z] are default lists 
# When ^ is used in a character class, it means not
# *********************************************