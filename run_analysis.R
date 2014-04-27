
##Merges the training and the test sets to create one data set.
##Extracts only the measurements on the mean and standard deviation for each measurement. 
##Uses descriptive activity names to name the activities in the data set
##Appropriately labels the data set with descriptive activity names. 
##Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## run_analysis - returns a data set
run_analysis <- function(dir="./UCI HAR Dataset/", destdir="./",...) {
  
  merge_datasets <- function(x, y) {
    message("merging data - not implemented")
    data.frame()
  }
  
  mean_set <- function(m, feat){
    message("means data")
    #extract means and standard deviations

    
    mean_std <- grep("mean\\(\\)|std\\(\\)",feat[,"V2"])
    #print(mean_std)
    colnames <- feat[mean_std,"V2"]
    print(colnames)
    #label the columns
    
    data.frame()
  }
  
  average_set <- function(m){
    message("averages data - not implemented")
    data.frame()
  }

  
  save_data <- function(data, outfile=""){
    message(paste0("writing data to ", outfile))
    write.table(data, outfile)
  }
  
  # read and merge each pair of datafiles
  test_x <- read.table(paste0(dir, "test/X_test.txt"))
  train_x <- read.table(paste0(dir, "train/X_train.txt"))
  merged_x <- merge_datasets(test_x, train_x)

  test_y <- read.table(paste0(dir, "test/Y_test.txt"))
  train_y <- read.table(paste0(dir, "train/Y_train.txt"))
  merged_y <- merge_datasets(test_y, train_y)

  test_subjects <- read.table(paste0(dir,'test/subject_test.txt'))
  train_subjects <- read.table(paste0(dir,'train/subject_train.txt'))
  merged_subjects <- merge_datasets(test_subjects, train_subjects)

  activity_labels <- read.table(paste0(dir,'activity_labels.txt'))
  features <- read.table(paste0(dir, "features.txt"))

  # Extract means and stds
  meansdata <- mean_set(merged_x, features)
  #label activities
  
  save_data(meansdata, paste0(destdir,"means.txt" ))
  print(meansdata)
  
  averagedata <- average_set(meansdata)
  save_data(averagedata, paste0(destdir,"average.txt" ))
  print(averagedata)
}

