
##Merges the training and the test sets to create one data set.
##Extracts only the measurements on the mean and standard deviation for each measurement. 
##Uses descriptive activity names to name the activities in the data set
##Appropriately labels the data set with descriptive activity names. 
##Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## run_analysis - returns a data set
run_analysis <- function(dir="./UCI HAR Dataset/", destdir="./",...) {
  
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
    message(paste0("reading data from ", datadir))
    d <- paste0(datadir, "Inertial Signals/")
    for( f in d){
      print(d)
    }
  }
  
  save_data <- function(data, outfile=""){
    message(paste0("writing data to ", outfile))
    write.table(data, outfile)
  }
  
  
  testdata  <- read_uci_smartphone_dataset(paste0(dir,"test/"))
  head(testdata,2)
  traindata <- read_uci_smartphone_dataset(paste0(dir,"train/"))
  head(traindata,2)
  
  mergedata <- merge_datasets(testdata, traindata)
  save_data(mergedata, paste0(destdir,"merged.txt" ))
  print(mergedata)
  
  meansdata <- mean_set(mergedata)
  save_data(meansdata, paste0(destdir,"means.txt" ))
  print(meansdata)
  
  averagedata <- average_set(meansdata)
  save_data(averagedata, paste0(destdir,"average.txt" ))
  print(averagedata)
}

