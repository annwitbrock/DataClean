
### Assignment for Coursera class [Getting and Cleaning Data](https://class.coursera.org/getdata-002)


---

The project is based on accelerometer data in the *Human Activity Recognition Using Smartphones Data Set*
from [UCI Smartphone Datasets](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


---

### run_analysis.R

* Merges training and test datasets into one dataset,
* Extracts the mean and standard deviation for each measurement,
* Labels the data set with activity names,
* Creates a new data set with the average of each variable for each activity and each subject.

The R script run_analysis.R expects the data to be in the directory
`./UCI HAR Dataset` by default.

In the R console in RStudio

```
> source('./run_analysis.R')
> run_analysis()
```

will save the output in the files 
`./means.txt` and `./average.txt` (in the working directory)


### CodeBook.md

The [Code Book](https://github.com/annwitbrock/DataClean/blob/master/CodeBook.md#codebook) describes the data and processing.