
#File was already downloaded and unzipped

#Loading dataframes from text files into R dataframes
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("id","feature"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
# Note column two of the features dataframe holds the column names for x_test and x_train
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$feature)
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$feature)
# Note column one of the activities dataframe matches the activity code in the dataframes below
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")

#1 Merges the training and the test sets to create one data set.

x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)
merged_data <- cbind(subject,x,y)

#2 Extracts only the measurements on the mean and standard deviation for each measurement. 

library(dplyr)
extract <-  select(merged_data, contains("mean"), contains("std"))

#3 Use descriptive activity names to name the activities in the data set

activities[extract$code, 2]

#4 Appropriately labels the data set with descriptive variable names. 

names(merged_data)<-gsub("Acc", "Accelermeter", names(merged_data))
names(merged_data)<-gsub("Gyro", "Gyroscope", names(merged_data))
names(merged_data)<-gsub("Mag", "Magnitude", names(merged_data))
names(merged_data)<-gsub("BodyBody", "Body", names(merged_data))
names(merged_data)<-gsub("gravity", "Gravity", names(merged_data))


#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#note activity stands for code in my naming 
finaloutput_tidydata <- merged_data %>% group_by(subject, code) %>% summarise_all(funs(mean))
write.table(finaloutput_tidydata, "finaloutput_tidydata.txt", row.name=FALSE)





