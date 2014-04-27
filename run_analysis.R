
##Merges the training and the test sets to create one data set.
##Extracts only the measurements on the mean and standard deviation for each measurement. 
##Uses descriptive activity names to name the activities in the data set
##Appropriately labels the data set with descriptive activity names. 
##Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## run_analysis - returns a data set
run_analysis <- function(dir="./UCI HAR Dataset", ...) {
  
  merge_datasets <- function(x, y) {
    message("merging data")
    m <- c(4,4)
  }
  
  mean_set <- function(m){
    message("means data")
    #extract means and standard deviations
    
    #label activities

    m <- c(2,2)
  }
  
  average_set <- function(m){
    message("averages data")
    a <- c(1,1)
  }

  read_uci_smartphone_dataset <- function(datadir){
    message(c("reading data from ", datadir))
    d <- c(3,3)
  }
  
  save_data <- function(data, outfile=""){
    message(c("writing data to ", outfile))
    write.table(data, outfile)
  }
  
  
  testdata  <- read_uci_smartphone_dataset(c(dir,"/test/"))
  head(testdata,2)
  traindata <- read_uci_smartphone_dataset(c(dir,"/train/"))
  head(traindata,2)
  
  mergedata <- merge_datasets(testdata, traindata)
  save_data(mergedata, "./merged.txt" )
  print(mergedata)
  
  meansdata <- mean_set(mergedata)
  save_data(meansdata, "./means.txt" )
  print(meansdata)
  
  averagedata <- average_set(meansdata)
  save_data(averagedata, "./average.txt" )
  print(averagedata)
}

