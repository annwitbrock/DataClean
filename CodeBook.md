
## CodeBook
Assignment for Coursera class [Getting and Cleaning Data](https://class.coursera.org/getdata-002)

---

The project is based on accelerometer data in the
[Samsung Smartphones Data Set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "Download Smartphone Data")
from [UCI Smartphone Datasets](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

---

The R script run_analysis.R expects the downloaded data to be in the directory
`./UCI HAR Dataset/` by default.


### [run_analysis.R](https://www.github.com/annwitbrock/DataClean)
* Merges training and test datasets into one dataset,
* Extracts the mean and standard deviation for each measurement,
* Labels the data set with descriptive activity names,
* Creates a new data set with the average of each variable for each activity and each subject.

---
 
### Dataset Description UCI HAR Dataset

The data is described in the README.txt file accompanying the dataset.
 
---

### Initial data preparation
 
Downloaded the dataset. Not using data in `./Inertial Signals/`
Within the run_analysis.R script, the files are loaded into respective data frames.

Only the columns of "test/X_test.txt" and "train/X_train.txt"
corresponding to mean() or std() functions are retained.
That is, whose name matches "mean\\(\\)|std\\(\\)"

To do: attach corresponding column names to the remaining X data.
 
To do:
Each of the corresponding pairs of test and train files are merged, so the rows of train data precede the rows of test data.
The subject and Y (activity) columns are added alongside the columns of the merged X table data.

This creates
---

### Output Dataset tidydata.txt
 
Not implemented