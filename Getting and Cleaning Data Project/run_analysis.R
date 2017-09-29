## 1. Create data set by merging the train and the test data sets.

## download data from webpage
dir.create("./data")
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./Data.zip")

## unzip downloaded data
unzip("Data.zip")

## load data
train_x <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
train_subject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
test_x <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

## merge train and test data sets
trainData <- cbind(train_subject, train_y, train_x)
testData <- cbind(test_subject, test_y, test_x)
allData <- rbind(trainData, testData)


## 2. Extract mean and statndard deviation measurements

## load feature name
featureName <- read.table("./data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)[,2]

## extract mean and standard deviation for each measurement
featureIndex <- grep(("mean\\(\\)|std\\(\\)"), featureName)
finalData <- allData[, c(1, 2, featureIndex+2)]
colnames(finalData) <- c("subject", "activity", featureName[featureIndex])


## 3. Use descriptive activity names to name the activities in the data set

## load activity data
activityName <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

## replace 1 to 6 with activity names
finalData$activity <- factor(finalData$activity, levels = activityName[,1], labels = activityName[,2])


## 4. Label the data set with descriptive variable names

names(finalData) <- gsub("\\()", "", names(finalData))
names(finalData) <- gsub("^t", "time", names(finalData))
names(finalData) <- gsub("^f", "frequence", names(finalData))
names(finalData) <- gsub("-mean", "Mean", names(finalData))
names(finalData) <- gsub("-std", "Std", names(finalData))


## 5. Create tidy data set with the average of each variable for each activity and each subject
library(dplyr)
groupData <- finalData %>%
        group_by(subject, activity) %>%
        summarise_all(funs(mean))

write.table(groupData, "./Average.txt", row.names = FALSE)





