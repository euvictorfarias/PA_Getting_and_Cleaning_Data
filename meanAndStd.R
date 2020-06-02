## Step 2 - Extract only the variables containing mean and std informations

meanAndStd <- function(dataFrame){
  
  library(dplyr)
  
  ## Give names to the variables
  nomes <- read.table("dataset/features.txt")
  nomes <- nomes[, 2]
  colnames(dataFrame) <- nomes
  
  ## Select the variables that contain mean and std
  colMean <- grep("mean", names(dataFrame))
  colStd <- grep("std", names(dataFrame))
  
  ## Put the variables in one ordered vector
  vetor <- c(colMean, colStd)
  vetor <- sort(vetor)
  
  ## Returns the correct variables of Data Frame inputted 
  dataFrame[, vetor]
  
}