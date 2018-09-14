## Getting and Cleaning Data - Course Project

This repository contains the final project for the 'Getting and Cleaning Data' course, part of the Data Science Specialization at Coursera.

***
### Project

The purpose of this project was to demonstrate our ability to collect, work with, and clean a data set. The goal was to prepare tidy data that could be used for later analyses.

The original dataset consists of data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description of the data is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here is a link to the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This repository contains an R script named 'run_analysis.R'. The script initially checks if the data exists in the current working directory, and if not downloads and unzips it. The script then carries out a number of steps to produce a tidy dataset from the original named 'tidy.txt':

1. Merges the training and test data to produce one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independant tidy data set with the average of each variable for each activity and each subject. 

***
### Repository Information

There are 4 files contained in this repository, including this README. The other files are:

* `run_analysis.R` - The function of this script is explained above.
* `tidy.txt` - This is the independant tidy data set created in step 5 of run_analysis.R. This data set can be used for further analyses. 
* `CodeBook.md` - Contains information on each of the variables included in tidy.txt.

***
### Dependencies

The 'reshape2' package is required for proper function of run_analysis.R.

If necessary, the command to download this package is as follows:

`install.packages('reshape2')`

***
### How to Use Tidy Data

In order to read the tidy data into R, use the following command:

`x <- read.table('tidy.txt', header = TRUE)`