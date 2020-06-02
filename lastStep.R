## Step 5 - Create a tidy data with averages according to activity and subject

lastStep <- function(dataFrame){
  
  ## Create and returns the data frame
  dataFrame %>% group_by(Activity, Subject) %>% summarise_all(list(mean=mean))
  
}