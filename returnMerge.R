## Step 1 - Merge of training and test data sets

returnMerge <- function(){

  library(dplyr)

  ## Get the two tables: Train and Test
  setTreino <- read.table("dataset/train/x_train.txt")
  setTeste <- read.table("dataset/test/x_test.txt")
  
  ## Merge the two tables into one: "Complete"
  complete <- rbind(setTeste, setTreino)
  
  ## Returns the merged data frame 
  complete

}
