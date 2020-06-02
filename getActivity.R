## Steps 3 - Add the activity variable on the first column

getActivity <- function(dataFrame){
  
  ## Read the labels of the activities to train and test data frames
  labelsTreino <- read.table("dataset/train/y_train.txt")
  labelsTeste <- read.table("dataset/test/y_test.txt")
  
  ## Join the labels into one data frame containing just one column
  activity <- rbind(labelsTeste, labelsTreino)
  colnames(activity) <- "Activity"
  
  ## Join the created data frame "activity" with the inputted data frame
  dataFrame <- cbind(activity, dataFrame)
  
  ## Read and save the activity data frame to convert numbers into actions
  labels <- read.table("dataset/activity_labels.txt")
  
  ## Change the name of the activities according to the numbers
  for(i in 1:nrow(dataFrame)){
    j <- as.integer(dataFrame$Activity[i])
    dataFrame[i, 1] <- labels[j, 2]
  }
  
  ## Returns the data frame created
  dataFrame

}