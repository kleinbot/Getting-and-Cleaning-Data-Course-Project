The tidy dataset was developed from the original HAR datasets by using the dplyr and data.table packages of R;
	clipping together X_test.txt, y_test.txt, subject_test.txt, X_train.txt, y_train.txt, subject_train.txt, features.txt and activity_labels.txt; 
	selecting only the Activity column, Subject column and all mean and standard deviation columns; 
	merging in the descriptive names of activity_labels.txt; 
	then using melt and dcast to produce the harAvg data table. 

All mean and std measurements were transformed into average mean and std measurements in this process. The script then generates a tidy data text file that meets the principles of tidy data.