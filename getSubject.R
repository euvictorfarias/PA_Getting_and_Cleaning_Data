## Step between 4 and 5 - Create a variable called "Subjects" to the data frame

getSubject <- function(dataFrame){
  
  ## Read and save the subjects into data frames
  subjectTreino <- read.table("dataset/train/subject_train.txt")
  subjectTeste <- read.table("dataset/test/subject_test.txt")
  
  ## Join the subjects data frames and give a name to the column 
  subjects <- rbind(subjectTeste, subjectTreino)
  colnames(subjects) <- "Subject"
  
  ## Join the subjects variable created to the data frame inputted
  dataFrame <- cbind(subjects, dataFrame)
  
  ## Returns the data frame created
  dataFrame

}

