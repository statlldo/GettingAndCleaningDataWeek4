This is the course project for Coursera Data Science Week 4 - Getting and Cleaning Data course.

The data files are from  experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

run_analysis.R is the code written to do the following:
Check if data files exist in working directory, and if not then download from the web

Read in the data for training and test, plus the associated files that provide the activity labels and personID
Combine the data across these files into a single dataset

Extract just those variables relating to Mean and Standard Deviation

Tidy up the column names so they are more readable

Finally, create a tidy dataset (see tidydataset.txt as the output) that takes the mean average of each variable for each subject and each activity.

