Code Book for the HAR_Averages_by_Activity_by_Subject.txt Dataset of the Getting and Cleaning Data Course Project.
HAR_Averages_by_Activity_by_Subject was derived from the Human Activity Recognition Using Smartphones Data Set 
of which a full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


Activity
	1 WALKING
	2 WALKING_UPSTAIRS
	3 WALKING_DOWNSTAIRS
	4 SITTING
	5 STANDING
	6 LAYING
	
Subject
	1..30 The group of 30 volunteers that took part in the HAR experiment
	
Variables
"tBodyAcc-mean()-X" "tBodyAcc-mean()-Y" "tBodyAcc-mean()-Z" "tGravityAcc-mean()-X" "tGravityAcc-mean()-Y" "tGravityAcc-mean()-Z" "tBodyAccJerk-mean()-X" "tBodyAccJerk-mean()-Y" "tBodyAccJerk-mean()-Z" "tBodyGyro-mean()-X" "tBodyGyro-mean()-Y" "tBodyGyro-mean()-Z" "tBodyGyroJerk-mean()-X" "tBodyGyroJerk-mean()-Y" "tBodyGyroJerk-mean()-Z" "tBodyAccMag-mean()" "tGravityAccMag-mean()" "tBodyAccJerkMag-mean()" "tBodyGyroMag-mean()" "tBodyGyroJerkMag-mean()" "fBodyAcc-mean()-X" "fBodyAcc-mean()-Y" "fBodyAcc-mean()-Z" "fBodyAcc-meanFreq()-X" "fBodyAcc-meanFreq()-Y" "fBodyAcc-meanFreq()-Z" "fBodyAccJerk-mean()-X" "fBodyAccJerk-mean()-Y" "fBodyAccJerk-mean()-Z" "fBodyAccJerk-meanFreq()-X" "fBodyAccJerk-meanFreq()-Y" "fBodyAccJerk-meanFreq()-Z" "fBodyGyro-mean()-X" "fBodyGyro-mean()-Y" "fBodyGyro-mean()-Z" "fBodyGyro-meanFreq()-X" "fBodyGyro-meanFreq()-Y" "fBodyGyro-meanFreq()-Z" "fBodyAccMag-mean()" "fBodyAccMag-meanFreq()" "fBodyBodyAccJerkMag-mean()" "fBodyBodyAccJerkMag-meanFreq()" "fBodyBodyGyroMag-mean()" "fBodyBodyGyroMag-meanFreq()" "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-meanFreq()" "angle(tBodyAccMean,gravity)" "angle(tBodyAccJerkMean),gravityMean)" "angle(tBodyGyroMean,gravityMean)" "angle(tBodyGyroJerkMean,gravityMean)" "angle(X,gravityMean)" "angle(Y,gravityMean)" "angle(Z,gravityMean)" "tBodyAcc-std()-X" "tBodyAcc-std()-Y" "tBodyAcc-std()-Z" "tGravityAcc-std()-X" "tGravityAcc-std()-Y" "tGravityAcc-std()-Z" "tBodyAccJerk-std()-X" "tBodyAccJerk-std()-Y" "tBodyAccJerk-std()-Z" "tBodyGyro-std()-X" "tBodyGyro-std()-Y" "tBodyGyro-std()-Z" "tBodyGyroJerk-std()-X" "tBodyGyroJerk-std()-Y" "tBodyGyroJerk-std()-Z" "tBodyAccMag-std()" "tGravityAccMag-std()" "tBodyAccJerkMag-std()" "tBodyGyroMag-std()" "tBodyGyroJerkMag-std()" "fBodyAcc-std()-X" "fBodyAcc-std()-Y" "fBodyAcc-std()-Z" "fBodyAccJerk-std()-X" "fBodyAccJerk-std()-Y" "fBodyAccJerk-std()-Z" "fBodyGyro-std()-X" "fBodyGyro-std()-Y" "fBodyGyro-std()-Z" "fBodyAccMag-std()" "fBodyBodyAccJerkMag-std()" "fBodyBodyGyroMag-std()" "fBodyBodyGyroJerkMag-std()"
			These variables have the same names as the original datasets but in the context of HAR_Averages_by_Activity_by_Subject.txt are average values of the mean and std measurements of the HAR experiment per Activity per Subject. 
			
Transformations
	The tidy dataset was developed from the original HAR datasets by using the dplyr and data.table pakages of R; clipping together X_test.txt, y_test.txt, subject_test.txt, X_train.txt, y_train.txt, subject_train.txt, features.txt and activity_labels.txt; selecting only the Activity column, Subject column and all mean and standard deviation columns; merging in the descriptive names of activity_labels.txt; using melt and dcast to produce the harAvg data table.
	
	harAvg was written to HAR_Averages_by_Activity_by_Subject.txt for presentation.