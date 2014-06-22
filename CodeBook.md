CODE BOOK FOR DATA SETS PRODUCED BY run_analysis.R FILE

The R script (run_analysis.R) performs the following steps to clean up the supplied data:

Step 1:
The script reads the train and test data files (X_train.txt and X_test.txt) and combine the read data into a data frame (data.x).
Then it reads the train and test labels file (Y_train.txt and Y_test.txt) and combine them into another data frame (data.y).
Finally it reads the train and test subject files and combine them in data.subject data frame.

Step 2:
The script reads all features from the features file (features.txt) and set columnname of the data frame "data.features".
It also extracts the measurements on the mean and standard deviation and update data.x data frame.

Step 3:
The script reads all activity labels from the activity_labels.txt file and set up descriptive activity names into the data set.

Step 4:
In this step, the script  appropriately labels the data set with descriptive variable names and generates the first tidy data set file.

Step 5:
The script generates a second, independent tidy data set with the average of each variable for each activity and each subject.                          
It computes the averages (variable 3 to last variable)  by each activity and each subject. Finally it generates a .txt output file.


Variables Summary:

Variable 1 "subject:
This variable lists the subjects assigned number in the original experiment.

Variable 2 "activity":
This variable is a factor indicating the types of the activity.

Both data sets have 81 variables. Except variables "subject" and "activity", the rest of the variables are the same as in the original data set.The second  data set lists averages over all observations in a group. All variables are listed as follows:

subject                 
activity	        
tBodyAcc-mean()-X	 
tBodyAcc-mean()-Y	   
tBodyAcc-mean()-Z	    
tBodyAcc-std()-X	
tBodyAcc-std()-Y	
tBodyAcc-std()-Z	
tGravityAcc-mean()-X	 
tGravityAcc-mean()-Y	  
tGravityAcc-mean()-Z	    
tGravityAcc-std()-X	
tGravityAcc-std()-Y	
tGravityAcc-std()-Z	
tBodyAccJerk-mean()-X	 
tBodyAccJerk-mean()-Y	  
tBodyAccJerk-mean()-Z	    
tBodyAccJerk-std()-X	
tBodyAccJerk-std()-Y	
tBodyAccJerk-std()-Z	
tBodyGyro-mean()-X	 
tBodyGyro-mean()-Y	  
tBodyGyro-mean()-Z	    
tBodyGyro-std()-X	
tBodyGyro-std()-Y	
tBodyGyro-std()-Z	
tBodyGyroJerk-mean()-X	 
tBodyGyroJerk-mean()-Y	  
tBodyGyroJerk-mean()-Z    
tBodyGyroJerk-std()-X	
tBodyGyroJerk-std()-Y	
tBodyGyroJerk-std()-Z	
tBodyAccMag-mean()	 
tBodyAccMag-std()	  
tGravityAccMag-mean()	    
tGravityAccMag-std()	
tBodyAccJerkMag-mean()	
tBodyAccJerkMag-std()	
tBodyGyroMag-mean()	 
tBodyGyroMag-std()	  
tBodyGyroJerkMag-mean()   
tBodyGyroJerkMag-std()	
fBodyAcc-mean()-X	
fBodyAcc-mean()-Y	
fBodyAcc-mean()-Z	 
fBodyAcc-std()-X	  
fBodyAcc-std()-Y	    
fBodyAcc-std()-Z	
fBodyAcc-meanFreq()-X	
fBodyAcc-meanFreq()-Y	
fBodyAcc-meanFreq()-Z	 
fBodyAccJerk-mean()-X	  
fBodyAccJerk-mean()-Y	    
fBodyAccJerk-mean()-Z	
fBodyAccJerk-std()-X	
fBodyAccJerk-std()-Y	
fBodyAccJerk-std()-Z	 
fBodyAccJerk-meanFreq()-X
fBodyAccJerk-meanFreq()-Y 
fBodyAccJerk-meanFreq()-Z	        
fBodyGyro-mean()-X	
fBodyGyro-mean()-Y	
fBodyGyro-mean()-Z	 
fBodyGyro-std()-X	  
fBodyGyro-std()-Y	    
fBodyGyro-std()-Z	
fBodyGyro-meanFreq()-X	
fBodyGyro-meanFreq()-Y	
fBodyGyro-meanFreq()-Z	 
fBodyAccMag-mean()	  
fBodyAccMag-std()	    
fBodyAccMag-meanFreq()	
fBodyBodyAccJerkMag-mean()	                
fBodyBodyAccJerkMag-std()
fBodyBodyAccJerkMag-meanFreq()	
fBodyBodyGyroMag-mean()	
fBodyBodyGyroMag-std()	
fBodyBodyGyroMag-meanFreq()	
fBodyBodyGyroJerkMag-mean()	
fBodyBodyGyroJerkMag-std()	
fBodyBodyGyroJerkMag-meanFreq()