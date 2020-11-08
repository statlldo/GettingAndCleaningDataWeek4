The data is taken from UCI HAR Dataset at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

These were the initial files from which a dataset was created by run_analysis

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

================================

run_analysis performs several steps to collate the test and train datasets into a single dataset, with the PersonID and TypeOfAcvitity as the identifying columns.

The remaining columns are the 

 [1] "TypeOfActivity"                         "PersonID"                               "tBodyAcc-Mean-X"                       
 [4] "tBodyAcc-Mean-Y"                        "tBodyAcc-Mean-Z"                        "tBodyAcc-StandardDev-X"                
 [7] "tBodyAcc-StandardDev-Y"                 "tBodyAcc-StandardDev-Z"                 "tGravityAcc-Mean-X"                    
[10] "tGravityAcc-Mean-Y"                     "tGravityAcc-Mean-Z"                     "tGravityAcc-StandardDev-X"             
[13] "tGravityAcc-StandardDev-Y"              "tGravityAcc-StandardDev-Z"              "tBodyAccJerk-Mean-X"                   
[16] "tBodyAccJerk-Mean-Y"                    "tBodyAccJerk-Mean-Z"                    "tBodyAccJerk-StandardDev-X"            
[19] "tBodyAccJerk-StandardDev-Y"             "tBodyAccJerk-StandardDev-Z"             "tBodyGyro-Mean-X"                      
[22] "tBodyGyro-Mean-Y"                       "tBodyGyro-Mean-Z"                       "tBodyGyro-StandardDev-X"               
[25] "tBodyGyro-StandardDev-Y"                "tBodyGyro-StandardDev-Z"                "tBodyGyroJerk-Mean-X"                  
[28] "tBodyGyroJerk-Mean-Y"                   "tBodyGyroJerk-Mean-Z"                   "tBodyGyroJerk-StandardDev-X"           
[31] "tBodyGyroJerk-StandardDev-Y"            "tBodyGyroJerk-StandardDev-Z"            "tBodyAccMag-Mean"                      
[34] "tBodyAccMag-StandardDev"                "tGravityAccMag-Mean"                    "tGravityAccMag-StandardDev"            
[37] "tBodyAccJerkMag-Mean"                   "tBodyAccJerkMag-StandardDev"            "tBodyGyroMag-Mean"                     
[40] "tBodyGyroMag-StandardDev"               "tBodyGyroJerkMag-Mean"                  "tBodyGyroJerkMag-StandardDev"          
[43] "FourierBodyAcc-Mean-X"                  "FourierBodyAcc-Mean-Y"                  "FourierBodyAcc-Mean-Z"                 
[46] "FourierBodyAcc-StandardDev-X"           "FourierBodyAcc-StandardDev-Y"           "FourierBodyAcc-StandardDev-Z"          
[49] "FourierBodyAccJerk-Mean-X"              "FourierBodyAccJerk-Mean-Y"              "FourierBodyAccJerk-Mean-Z"             
[52] "FourierBodyAccJerk-StandardDev-X"       "FourierBodyAccJerk-StandardDev-Y"       "FourierBodyAccJerk-StandardDev-Z"      
[55] "FourierBodyGyro-Mean-X"                 "FourierBodyGyro-Mean-Y"                 "FourierBodyGyro-Mean-Z"                
[58] "FourierBodyGyro-StandardDev-X"          "FourierBodyGyro-StandardDev-Y"          "FourierBodyGyro-StandardDev-Z"         
[61] "FourierBodyAccMag-Mean"                 "FourierBodyAccMag-StandardDev"          "FourierBodyBodyAccJerkMag-Mean"        
[64] "FourierBodyBodyAccJerkMag-StandardDev"  "FourierBodyBodyGyroMag-Mean"            "FourierBodyBodyGyroMag-StandardDev"    
[67] "FourierBodyBodyGyroJerkMag-Mean"        "FourierBodyBodyGyroJerkMag-StandardDev"

See ReadMe for a summary of the analysis steps taken.
