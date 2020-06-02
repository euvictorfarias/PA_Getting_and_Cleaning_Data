## Project Assignment: Getting and Cleaning Data Course Project
## Author: Victor Farias


## Step 1: Merge the tables "Train" and "Test" into one called "dataFrame1"
source("returnMerge.R")
dataFrame1 <- returnMerge()

## Step 2: Select the variables that have mean and std into "dataFrame2"
source("meanAndStd.R")
dataFrame2 <- meanAndStd(dataFrame1)

## Step 3: Add the variable "Activity" and returns into "dataFrame3"
source("getActivity.R")
dataFrame3 <- getActivity(dataFrame2)

## Step 4: Rename correctly the variable names and store into "dataFrame4"
source("labelVariables.R")
dataFrame4 <- labelVariables(dataFrame3)

## Step between 4 and 5: Create a variable called "Subjects" to the data frame
source("getSubject.R")
dataFrame5 <- getSubject(dataFrame4)

## Step 5: Create a tidy data with averages according to activity and subject
source("lastStep.R")
dataFrame6 <- lastStep(dataFrame5)

write.table(dataFrame6, file = "finalDataset.txt", row.names = FALSE)