## Step 4 - Rename correctly the variables

labelVariables <- function(dataFrame){
  
  ## Rename the abbreviations to the correct names
  names(dataFrame)<-gsub("Acc", "Accelerometer", names(dataFrame))
  names(dataFrame)<-gsub("Gyro", "Gyroscope", names(dataFrame))
  names(dataFrame)<-gsub("BodyBody", "Body", names(dataFrame))
  names(dataFrame)<-gsub("Mag", "Magnitude", names(dataFrame))
  names(dataFrame)<-gsub("^t", "Time", names(dataFrame))
  names(dataFrame)<-gsub("^f", "Frequency", names(dataFrame))
  names(dataFrame)<-gsub("tBody", "TimeBody", names(dataFrame))
  names(dataFrame)<-gsub("-mean()", "Mean", names(dataFrame), ignore.case = TRUE)
  names(dataFrame)<-gsub("-std()", "STD", names(dataFrame), ignore.case = TRUE)
  names(dataFrame)<-gsub("-freq()", "Frequency", names(dataFrame), ignore.case = TRUE)
  names(dataFrame)<-gsub("angle", "Angle", names(dataFrame))
  names(dataFrame)<-gsub("gravity", "Gravity", names(dataFrame))
  
  ## Returns the data frame with the changes
  dataFrame

}