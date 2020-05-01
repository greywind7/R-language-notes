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

# ********************dates********************
# date() gives current time as a string
# Sys.date() has more funnctionality 
# Date can be formatted with format() function
# + %d = day as number
# + %a = abbreviated weekday
# + %A = unabb. weekday
# + %m = month in digit
# + %b = abb. month
# + %B = unabb. month
# + %y = 2 digit year
# + %Y = 4 digit year
d = Sys.Date()
format(d, "%d %B %Y")
# character vectors can be converted to date using as.Date()
as.Date("4apr69","%d%b%y")
library(lubridate)
# combination of ymd converts any data in date
dmy("200469")
# times can be added using hms after being followed by _    

# ********************regex basics********************
# grep() is for regex
# Set of metachars to find literals. ^ is for start $ is for end
# Character class [] matches any of the chars in the list
# [0-9], [a-z], [A-Z] are default lists 
# When ^ is used in a character class, it means not
# . replaces any one character
# | is or, searches for any alternative piped by it
# Parenthesis followed by ? are optional
# * means 0 or more chars, + means one or more chars
# {m,n} to specify min and max time that expreesion has to be present
# {m} means exactl and {m,} means at least
# \1 \2 and so on match the exact same phrase again
# *****************************************************