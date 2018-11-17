# Coursera_Getting_Cleaning_Data_Course_Project

This github repo was created as part of the week4 project and holds the R_Analysis script.

1) Script Variables

#Loading dataframes from text files into R dataframes
features is dataframe variable holding the data in "UCI HAR Dataset/features.txt"
activities is dataframe variable holding the data in "UCI HAR Dataset/activity_labels.txt"
subject_test is dataframe variable holding the data in "UCI HAR Dataset/test/subject_test.txt"
subject_train is dataframe variable holding the data in "UCI HAR Dataset/train/subject_train.txt"
x_test is dataframe variable holding the data in  "UCI HAR Dataset/test/X_test.txt"
x_train is dataframe variable holding the data in "UCI HAR Dataset/train/X_train.txt"
y_train is dataframe variable holding the data in "UCI HAR Dataset/train/y_train.txt"
subject is dataframe variable combining 2 dataframes (subject_train, subject_test)
merged_data is dataframe variable holding the complete data set.


2) The project description and requirements are described below:

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

    Merges the training and the test sets to create one data set.
    Extracts only the measurements on the mean and standard deviation for each measurement.
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive variable names.
    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
