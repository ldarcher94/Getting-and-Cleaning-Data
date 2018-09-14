## Code Book 

***
### Identifiers

* `subject` - *integer* - ID number of the test subject
    + 1 - 30

* `activity` - *string* - Type of activity being carried out when the measurement was taken
    + Walking
    + Walking Upstairs
    + Walking Downstairs
    + Sitting
    + Standing
    + Laying

***
### Measurements

The following variables are mean values of multiple measurements, based on subject and activity. All values have been normalised and bounded within [-1,1], and are of type *numeric*.

* ` timeBodyAccmeanX `
* ` timeBodyAccmeanY `
* ` timeBodyAccmeanZ `
* ` timeBodyAccstdX `
* ` timeBodyAccstdY `
* ` timeBodyAccstdZ `
* ` timeGravityAccmeanX `
* ` timeGravityAccmeanY `
* ` timeGravityAccmeanZ `
* ` timeGravityAccstdX `
* ` timeGravityAccstdY `
* ` timeGravityAccstdZ `
* ` timeBodyAccJerkmeanX `
* ` timeBodyAccJerkmeanY `
* ` timeBodyAccJerkmeanZ `
* ` timeBodyAccJerkstdX `
* ` timeBodyAccJerkstdY `
* ` timeBodyAccJerkstdZ `
* ` timeBodyGyromeanX `
* ` timeBodyGyromeanY `
* ` timeBodyGyromeanZ `
* ` timeBodyGyrostdX `
* ` timeBodyGyrostdY `
* ` timeBodyGyrostdZ `
* ` timeBodyGyroJerkmeanX `
* ` timeBodyGyroJerkmeanY `
* ` timeBodyGyroJerkmeanZ `
* ` timeBodyGyroJerkstdX `
* ` timeBodyGyroJerkstdY `
* ` timeBodyGyroJerkstdZ `
* ` timeBodyAccMagmean `
* ` timeBodyAccMagstd `
* ` timeGravityAccMagmean `
* ` timeGravityAccMagstd `
* ` timeBodyAccJerkMagmean `
* ` timeBodyAccJerkMagstd `
* ` timeBodyGyroMagmean `
* ` timeBodyGyroMagstd `
* ` timeBodyGyroJerkMagmean `
* ` timeBodyGyroJerkMagstd `
* ` freqBodyAccmeanX `
* ` freqBodyAccmeanY `
* ` freqBodyAccmeanZ `
* ` freqBodyAccstdX `
* ` freqBodyAccstdY `
* ` freqBodyAccstdZ `
* ` freqBodyAccmeanFreqX `
* ` freqBodyAccmeanFreqY `
* ` freqBodyAccmeanFreqZ `
* ` freqBodyAccJerkmeanX `
* ` freqBodyAccJerkmeanY `
* ` freqBodyAccJerkmeanZ `
* ` freqBodyAccJerkstdX `
* ` freqBodyAccJerkstdY `
* ` freqBodyAccJerkstdZ `
* ` freqBodyAccJerkmeanFreqX `
* ` freqBodyAccJerkmeanFreqY `
* ` freqBodyAccJerkmeanFreqZ `
* ` freqBodyGyromeanX `
* ` freqBodyGyromeanY `
* ` freqBodyGyromeanZ `
* ` freqBodyGyrostdX `
* ` freqBodyGyrostdY `
* ` freqBodyGyrostdZ `
* ` freqBodyGyromeanFreqX `
* ` freqBodyGyromeanFreqY `
* ` freqBodyGyromeanFreqZ `
* ` freqBodyAccMagmean `
* ` freqBodyAccMagstd `
* ` freqBodyAccMagmeanFreq `
* ` freqBodyBodyAccJerkMagmean `
* ` freqBodyBodyAccJerkMagstd `
* ` freqBodyBodyAccJerkMagmeanFreq `
* ` freqBodyBodyGyroMagmean `
* ` freqBodyBodyGyroMagstd `
* ` freqBodyBodyGyroMagmeanFreq `
* ` freqBodyBodyGyroJerkMagmean `
* ` freqBodyBodyGyroJerkMagstd `
* ` freqBodyBodyGyroJerkMagmeanFreq `

***
### Activity Labels

Defines the activity the subject was doing whilst the measurement was taken.

* `WALKING`
* `WALKING_UPSTAIRS`
* `WALKING_DOWNSTAIRS`
* `SITTING`
* `STANDING`
* `LAYING`