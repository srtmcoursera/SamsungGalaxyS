## Script for performing the analysis and cleaning process of the
## Samsung Galaxy S data set, "Getting and Cleaning Data" course
## project from Coursera.
##
## Data set files: paste0("https://d396qusza40orc.cloudfront.net/",
##     "getdata/projectfiles/UCI HAR Dataset.zip")
##
## Full description: paste0("http://archive.ics.uci.edu/ml/datasets/",
##     "Human+Activity+Recognition+Using+Smartphones")
##
## Author: Sergio Rogelio Tinoco-Martínez
## Version: January 2016.
## Precondition: This script can be run as long as the Samsung data is
##     in the working directory.
## Main function: run_analysis().


## For the test data set, this function reads subject IDs, activity IDs,
## measurement data, and combines them by columns as a single data set.
readTestData <- function() {
        subject_test <- read.table("./test/subject_test.txt")
        y_test <- read.table("./test/y_test.txt")
        X_test <- read.table("./test/X_test.txt")
        cbind(subject_test, y_test, X_test)
}


## For the train data set, this function reads subject IDs, activity
## IDs, measurement data, and combines them by columns as a single data
## set.
readTrainData <- function() {
        subject_train <- read.table("./train/subject_train.txt")
        y_train <- read.table("./train/y_train.txt")
        X_train <- read.table("./train/X_train.txt")
        trainData <- cbind(subject_train, y_train, X_train)
}


## Combines both test and train data to create one single data set.
combineData <- function(testData, trainData) {
        rbind(testData, trainData)
}


## Sets the original column names for the subject IDs, activity IDs,
##     and measurement data.
setOriginalColumnNames <- function(dataset) {
        featureNames <- read.table("./features.txt",
                                   stringsAsFactors = FALSE)
        colnames(dataset) <- c("subjectId", "activityId",
                               featureNames[,2])
        dataset
}


## Extracts only the measurements on the mean and standard deviation
##     for each measurement of the dataset.
filterMeanAndStdColumns <- function(dataset) {
        colsToFilter <- grep("mean|std", colnames(dataset))
        
        cbind(dataset[c("subjectId","activityId")],
              dataset[colsToFilter])
}


## Decodes dataset activity IDs to their corresponding activity labels.
decodeActivityIds <- function(dataset) {
        activityLabels <- read.table("./activity_labels.txt",
                                     stringsAsFactors = FALSE)[, 2]
        dataset["activityId"] <- activityLabels[dataset$activityId]
        
        ## Rename column
        colnames(dataset)[colnames(dataset) == "activityId"] <- "activity"
        
        dataset
}


## Modifies dataset labels to be more appropiate/descriptive.
appropiatelyLabelling <- function(dataset) {
        colNames <- colnames(dataset)
        colNames <- sub("^t", "time", colNames)
        colNames <- sub("^f", "frequency", colNames)
        colNames <- gsub("std", "standardDeviation", colNames)
        colNames <- gsub("Acc", "Acceleration", colNames)
        colNames <- gsub("Gyro", "Gyroscope", colNames)
        colNames <- gsub("Mag", "Magnitude", colNames)
        colNames <- gsub("Freq", "Frequency", colNames)
        colNames <- gsub("-", "", colNames)
        colNames <- gsub("[(]", "", colNames)
        colNames <- gsub("[])]", "", colNames)
        colnames(dataset) <- colNames
        dataset
}


## Creates a tidy data set from the given data, with the average of
## each variable for each activity and each subject.
createTidyDataset <- function(dataset) {
        library(dplyr)
        
        tidyData <- dataset %>%
                group_by(subjectId, activity) %>%
                summarize_each(funs(mean))
        tidyData
}


## Performs the analysis and cleaning process of the Samsung Galaxy S
##     data set.
run_analysis <- function() {
        data <- combineData(readTestData(), readTrainData())
        data <- setOriginalColumnNames(data)
        data <- filterMeanAndStdColumns(data)
        data <- decodeActivityIds(data)
        data <- appropiatelyLabelling(data)
        tidyData <- createTidyDataset(data)
        tidyData
}