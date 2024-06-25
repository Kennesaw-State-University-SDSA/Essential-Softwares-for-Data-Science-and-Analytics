## Basic Data Analysis using R ##

## Read in Heart.csv file ##

heart <- read.csv("Heart.csv")

## Install rstatix package ##

install.packages("rstatix")

## Load rstatix package ##

library(rstatix)

## Calcualte mean, median, and standard deviation
## of Height and Weight variables ##

get_summary_stats(heart, c(Height, Weight))

## Mean for height = 64.8 ##

## Generate histogram for Height variable ##

hist(heart$Height,main="Histogram of Height",
     xlab="Height",col="blue",border="black")

## Tabulate Frequency of Weight_Status variable ##

table(heart$Weight_Status)

## note, the blank category represents missing values ##

## Generate barplot for Weight_Status variable ##

barplot(table(heart$Weight_Status),main="Barplot of Weight Status",
        xlab="Weight Status",ylab="Frequency",col="blue")
