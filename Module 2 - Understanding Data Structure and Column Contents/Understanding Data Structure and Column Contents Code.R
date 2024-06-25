## Understanding Data Structure and Column Contents ##

## Read in Cars Data ##

cars <- read.csv("Cars.csv")

## Display the structure of the data ##

str(cars)

## We have 32 observations and 11 variables ##
## We also have 11 numeric/integer variables and 1
## character variable ##

## Load readxl Library ##

library(readxl)

## Read in Planes Data ##

planes <- read_xlsx("NYC Airplanes 2013.xlsx")

## Display the structure of the data ##

str(planes)

## We have 3322 observations and 9 variables ##
## We have 5 character and 4 numeric columns ##

## Examining Summaries of Data ##

summary(cars)

## As we can see, no missing values ##

summary(planes)

## Here, year and speed contain missing values (NAs) ##

