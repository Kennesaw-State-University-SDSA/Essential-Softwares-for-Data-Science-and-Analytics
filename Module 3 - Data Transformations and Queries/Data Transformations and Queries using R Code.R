## Data Transformations and Queries using R ##

## Read in heart dataset ##

heart <- read.csv('HEART.csv')

## Install the dplyr package ##

install.packages('dplyr')

## Load the dplyr package ##

library(dplyr)

## Select only the columns: 
## Chol_Status
## BP_Status
## Weight_Status
## Smoking_Status

selected_columns <- select(heart, 
                           Chol_Status, 
                           BP_Status, 
                           Weight_Status, 
                           Smoking_Status)

## Print the first 6 rows of the selected columns ##

head(selected_columns)

## Filter the dataset to only include rows where:
## Chol_Status is not 'High' ##

filtered_rows <- filter(heart, 
                        Chol_Status != 'High')

## Add BMI column to heart using mutate ##

new_column <- mutate(heart, 
                     BMI = (weight/height^2)*703)

## Check out data structure to make sure it worked ##

str(new_column)

