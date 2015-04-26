#
#
#
#
library(dplyr)
library(data.table)

# read all raw data
x_test_df <- read.table("./UCI HAR Dataset/test/X_test.txt")
x_train_df <- read.table("./UCI HAR Dataset/train/X_train.txt")

y_test_df <- read.table("./UCI HAR Dataset/test/y_test.txt")
y_train_df <- read.table("./UCI HAR Dataset/train/y_train.txt")

subject_test_df <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train_df <- read.table("./UCI HAR Dataset/train/subject_train.txt")
 
features_df <- read.table("./UCI HAR Dataset/features.txt")
activities_df <- read.table("./UCI HAR Dataset/activity_labels.txt")

# test dataframes subject, y and x all have the same number of rows
tidy_test_df <- bind_cols(list(subject_test_df, y_test_df, x_test_df))
colnames(tidy_test_df) <- c("Subject", "Act_id", as.character(features_df[,2]))

# train dataframes subject, y and x all have the same number of rows
tidy_train_df <- bind_cols(list(subject_train_df, y_train_df, x_train_df))
colnames(tidy_train_df) <- c("Subject", "Act_id", as.character(features_df[,2]))

# Explicit reference to all the variables required,
#  otherwise complete binding of data to tidy_df comes out
#  truncated down to 479 columns (a mystery to me!)...
tidy_df <- bind_rows(tidy_test_df[,1:563], tidy_train_df[,1:563])


###################
#Extracts only the measurements on the mean
# and standard deviation for each measurement. 
har_means_stds <- select(tidy_df, 
                         Subject, 
                         Act_id, 
                         contains("mean"), 
                         contains("std"))

###################
#Use descriptive activity names.
# Using merge...

names(activities_df) <- c("Act_id","Activity")
DT1 <- data.table(activities_df)
DT2 <- data.table(har_means_stds)

setkey(DT1, Act_id)
setkey(DT2, Act_id)

har_act_means_stds <- merge(DT1,DT2)
har_act_means_stds$Act_id <- NULL

###################
#From har_act_means_stds, creates a second, 
# independent tidy data set with the average of 
# each variable for each activity and each subject.

harMelt <- melt(har_act_means_stds,id=1:2, 
                measure.vars = 3:ncol(har_act_means_stds))

harAvg <- dcast.data.table(harMelt, Activity+Subject ~ variable,mean)


