## Set variables for url and filename
data.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
filename <- 'HAR_smartphones_data.zip'

setwd('/home/luke/Documents/Data_Sci_Coursera/Getting_and_Cleaning_Data/Course_project')

## If necessary, download and unzip the dataset
if (!file.exists(filename)) {
        download.file(data_url, filename, method = 'curl')
}
if (!file.exists('UCI_HAR_Dataset/')) {
        unzip(filename)
}


#=======================================================================

### STEP 1 ###
### Merge training and test data set to create one data set

## Load training data and column bind
train.subject <- read.table('UCI_HAR_Dataset/train/subject_train.txt', header = FALSE)
train.activity <- read.table('UCI_HAR_Dataset/train/y_train.txt', header = FALSE)
train.data <- read.table('UCI_HAR_Dataset/train/X_train.txt', header = FALSE)
train.full <- cbind(train.subject, train.activity, train.data)

## Load test data and column bind
test.subject <- read.table('UCI_HAR_Dataset/test/subject_test.txt', header = FALSE)
test.activity <- read.table('UCI_HAR_Dataset/test/y_test.txt', header = FALSE)
test.data <- read.table('UCI_HAR_Dataset/test/X_test.txt', header = FALSE)
test.full <- cbind(test.subject, test.activity, test.data)

## Row bind both complete datasets together
data.complete <- rbind(test.full, train.full)


#=======================================================================

### STEP 2 ###
### Extract only the measurements on the mean and standard deviation for each measurement

## Load features.txt to get column information
features <- read.table('UCI_HAR_Dataset/features.txt', header = FALSE)

## Find all columns containing mean() or std() and extract subset of names
#required.vars <- features[grep('\\bmean()\\b|\\bstd()\\b', features[ ,2]), 2]
required.vars <- features[grep('mean\\(\\)|std\\(\\)', features[ ,2]), 2]
### NEED TO CORRECT THIS REGEX!!!
#NEED TO CORRECT THIS REGEX!!!
required.vars

## Select only mean() and std() columns from data.complete along with subject and activity cols
data.required <- data.complete[ , c(1, 2, required.vars)]


#=======================================================================

### STEP 3 ###
### Use descriptive activity names to name the activities in the data set

## Load activity labels file
activity.labels <- read.table('UCI_HAR_Dataset/activity_labels.txt', header = FALSE)

## Add descriptive activity names to column 2 using vectorisation
## Convert activity labels column from factor to character
data.required[,2] <- activity.labels[data.required[,2], 2]
data.required[,2] <- as.character(data.required[,2])


#=======================================================================

### STEP 4 ###
### Appropriately label the data set with descriptive variable names

## Remove special characters with gsub()
## Also expand 't' and 'f' to 'time' and 'freq' respectively
required.vars <- gsub('\\-|\\(|\\)', '', as.character(required.vars))
required.vars <- sub('^t', 'time', required.vars)
required.vars <- sub('^f', 'freq', required.vars)

## Assign appropriate labels for column names
colnames(data.required) <- c('subject', 'activity', required.vars)


#=======================================================================

### STEP 5 ###
### From the data set in step 4, create a second, independant tidy data set with the average of 
### each variable for each activity and each subject

## Load reshape2 package for melt and cast functions
library(reshape2)

## Use reshape2::melt to produce df with a row for each combination of subject and activity
data.melted <- melt(data.required, id = c('subject', 'activity'))

## Use reshape2::dcast to create df of mean values of each subject + activity
data.mean <- dcast(data.melted, formula = subject + activity ~ variable, mean)

## Write data to file
write.table(data.mean, file = 'UCI_HAR_Dataset/tidy.txt', row.names = FALSE, quote = FALSE)


#=======================================================================