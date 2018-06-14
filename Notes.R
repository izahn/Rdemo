## Ex 1.
## This exercise will give you a chance to
## learn the R / Rstudio interface
##
## 1. Add 2 and 2
2 + 2
"+"(2, 2)

## 2. Calculate the square root of 10
sqrt(10)

## 3. Find R documentation "An introduction to R"
help.start()



## Getting help

# browse the help
help.start()

# help on a particular function
help(sqrt)

# same as above but shorter
?sqrt

# help on a particular package
help(package = "base", )

## don't use help.search(), do a web search instead!

## assignment

## the name on the left of the arrow gets the value on the right
s10 <- sqrt(10)

## this does the same thing.
s10 = sqrt(10)

## The name on the left should start with a letter
## and contain only letters numbers underscores and periods

## R is case sensitive, s10 is different from S10.

### Functional programming

## the dot does _not_ indicate a method!
help.start()


## Example project
## We will examine baby names to find the most popular
## over time.

## Data set:
## http://tutorials.iq/harvard.edu/R/Rintro/dataSets/babyNames.csv

## the readr package has more reliable plain text readers
install.packages("readr")

## add a package to the search path
library("readr")

## for reading data from other stats packages
## try the haven package

## for exel, try the readxl package


## Exercise 2
# 1. open the help for read_csv and figure out how to limit
# the mumber of rows
help(read_csv)

# 2. read just the first 10 rows from 
# http://tutorials.iq/harvard.edu/R/Rintro/dataSets/babyNames.csv
read_csv("http://tutorials.iq.harvard.edu/R/Rintro/dataSets/babyNames.csv",
              n_max=10)




# 3. read all the data and assign the result to an object named 
                                        # baby.names
baby.names = read_csv("http://tutorials.iq.harvard.edu/R/Rintro/dataSets/babyNames.csv")


## data manipulation

## just use dplyr

install.packages("dplyr")

library("dplyr")

## inspect data objects
glimpse(baby.names)

class(baby.names)


## selecting rows using filter
filter(baby.names, 
       Name == "jill")

## jack or jill
filter(baby.names,
       Name == "jack" | Name == "jill")

filter(baby.names,
       Name %in% c("jack", "jill"))

c("a", "b", "c") %in% c("a", "b")

## other operators include

# <, >, <=, >=, !=, |, &

## Exercise 3

## 1. extract data for the name "ashley"

filter(baby.names,
       Name == "ashley")

## 2. Restrict the previous extraction to include only years between 200 and 2004

filter(baby.names,
       Name == "ashley",
       Year >= 2000 & Year <= 2004)
