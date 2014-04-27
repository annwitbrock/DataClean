
## CodeBook
Assignment for Coursera class [Getting and Cleaning Data](https://class.coursera.org/getdata-002)

---

The project is based on accelerometer data in the
[Samsung Smartphones Data Set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "Download Smartphone Data")
from [UCI Smartphone Datasets](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

---

The R script run_analysis.R expects the downloaded data to be in the working directory
`UCI HAR Dataset`


### [run_analysis.R](https://www.github.com/annwitbrock/DataClean)
* Merges training and test datasets into one dataset,
* Extracts the mean and standard deviation for each measurement,
* Labels the data set with descriptive activity names,
* Creates a new data set with the average of each variable for each activity and each subject.

---

### Initial data preparation
 
 
---
 
### Dataset Description UCI HAR Dataset
 
---

### Output Dataset tidydata.txt
 