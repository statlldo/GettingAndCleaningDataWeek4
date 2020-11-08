
#//Load in the test and train data from your working directory
# y_test looks to have the activity number (eg sitting = 1 etc) for each row in x_test (2947 rows)
#each row in x_test has 561 columns - what are the columns?
#features gives the label for the 561 columns - eg 1 tBodyAcc-mean()-X
#2 tBodyAcc-mean()-Y
#3 tBodyAcc-mean()-Z
#4 tBodyAcc-std()-X
#5 tBodyAcc-std()-Y
#6 tBodyAcc-std()-Z

run_analysis <- function () {
#this function assumes the datasets have been downloaded into the wd (see ReadMe)
  
#read the test and train data in  
xtestdata<-read.table("UCI HAR Dataset/test/x_test.txt")
testsubjects<-read.table("UCI HAR Dataset/test/subject_test.txt")
xtraindata<-read.table("UCI HAR Dataset/train/X_train.txt")
trainsubjects<-read.table("UCI HAR Dataset/train/subject_train.txt")


#get hold of the column labels for test and train data
features<-read.table("UCI HAR Dataset/features.txt")

#get the activity type for each row
testactivitytype<-read.table("UCI HAR Dataset/test/y_test.txt")
trainactivitytype<-read.table("UCI HAR Dataset/train/Y_train.txt")

#get the labels that relate to the activity type
activitylabels<-read.table("UCI HAR Dataset/activity_labels.txt")

#add the column names to test and train
colnames(xtestdata) <- features[,2] 
colnames(xtraindata) <-features[,2] 

#change column name of subjects
colnames(trainsubjects) <- "PersonID"
colnames(testsubjects) <- "PersonID"

#append the subjects to the data
xtestdata <- cbind(testsubjects, xtestdata)
xtraindata <- cbind(trainsubjects, xtraindata)


#add activity labels to activity data - 
xtestdata<-cbind(testactivitytype, xtestdata)
# and merge with activity labels - ie use the testactivitytype number to retrieve the activity label

xtestdata<-merge(activitylabels, xtestdata )

#do same with the train data
xtraindata<-cbind(trainactivitytype, xtraindata)
xtraindata<-merge(activitylabels, xtraindata )

#merge the test and train data
all_data<-rbind(xtestdata, xtraindata)
#print(all_data[1:4,1:5])
#print(all_data$V2)

#change name of column V2 to Type of activity so it's more meaningful
colnames(all_data)[colnames(all_data) == "V2"] <- "TypeOfActivity"

#get rid of all columns except those with mean and std in the column name (or Type of Activity, or PersonID)
#use escaoe character to match against () explicitly
focussed_data<-all_data[,grepl("PersonID", names(all_data)) | grepl("TypeOfActivity", names(all_data))| grepl("[mM]ean\\(\\)", names(all_data))|  grepl("[sS]td\\(\\)", names(all_data))]

#replace 't' at beginning of column name with 'Time'
colnames(focussed_data)<-gsub(x=names(focussed_data), pattern = "^t)", replacement = "Time")
#replace 'f' at beginning of column name with 'Fourier' to make it easier to read
colnames(focussed_data)<-gsub(x=names(focussed_data), pattern = "^f", replacement = "Fourier")
#replace 'std()' with 'standardDev'
colnames(focussed_data)<-gsub(x=names(focussed_data), pattern = "[Ss]td\\(\\)", replacement = "StandardDev")
#replace 'mean() with 'mean'
colnames(focussed_data)<-gsub(x=names(focussed_data), pattern = "[Mm]ean\\(\\)", replacement = "Mean")

print(focussed_data)

tidy <- aggregate( . ~ PersonID + TypeOfActivity, data = focussed_data, FUN = mean )

write.csv(tidy, file = "tidydataset.txt", row.names =FALSE)

}

