# Getting and Cleaning Data Project

## Project purpose

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

## Data source
A full description is available at the site where the data was obtained [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The information about how the experiment conducted and how the original data collected can be found in the zip file [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

## Files

- `run_analysis.R` is the R script for running all functions to fulfil this project tasks:
    - Merges the training and the test sets to create one data set.
    - Extracts only the measurements on the mean and standard deviation for each measurement.
    - Uses descriptive activity names to name the activities in the data set
    - Appropriately labels the data set with descriptive variable names.
    - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- "codebook.md" gives the relevant information about the data and steps to run the project.
- "Average.txt" is a tidy dataset that contains mean of each measurement for each activity and each subject.  
- "README.md" is the file you are reading.

## Steps in `run_analysis.R`

### 1. Merge the training and the test sets to create one data set.

- Used `download.file()` together with `unzip()` function to download the zip file from website. 
- Used `read.table()` function to load "X_train.txt", "y_train", "subject_train" in train directory and "X_test", "y_test", "subject_test" into R.
- Used `rbind()` and `cbind()` functions to merge train and test data.

### 2. Extract only the measurements on the mean and standard deviation for each measurement. 

- Used `read.table()` function to load "features.txt" into R.
- Used `grep()` function to find the indexes with "mean()" and "sd()".
- selected all relevant columns and set the columns name using the selected features name.

### 3. Uses descriptive activity names to name the activities in the data set

- Used `read.table()` function to load "activity_labels.txt".
- Used `factor()` function with arguments "levels = " and "labels = " to replace the numbers to activity names.

### 4. Appropriately labels the data set with descriptive variable names

- Used `gsub()` function to names viariables appropriately.

### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

- Used `group_by()` and `summarise_each()` functions of `dplyr` package to calculate all means for each activity and wach subject.
