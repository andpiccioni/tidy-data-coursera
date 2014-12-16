rm(list=ls())			## clean the workspace

#1. Merges the training and the test sets to create one data set.

training <- read.table("UCI HAR Dataset/train/X_train.txt", header=F)
test <- read.table("UCI HAR Dataset/test/X_test.txt", header=F)

features <- read.table("UCI HAR Dataset/features.txt", header=F) ## loads the variables' names

mergedata <- merge(training, test, all=T)		## create a single dataset

names(mergedata) <- features$V2			## assign variables' names

#2. Extracts only the measurements on the mean and standard deviation for 
#   each measurement.  

mergedata_mean <- mergedata[,grep("mean", names(mergedata))]	 ## retrieves "mean" variable only
mergedata_std <- mergedata[,grep("std", names(mergedata))]		 ## retrieves "std" variable only
mergedata <- cbind(mergedata_mean, mergedata_std)			## combine the two sets of variable


#3. Uses descriptive activity names to name the activities in the data set.

activity_y <- read.table("UCI HAR Dataset/train/y_train.txt") ## loads activity codes for train data
test_y <- read.table("UCI HAR Dataset/test/y_test.txt") 	## loads activity codes for test data
activity <- rbind(activity_y,test_y)				## create single activity codes column
						
activity$V1[activity$V1 == 1] <- "walking"		## replaces activity codes with respective labels
activity$V1[activity$V1 == 2] <- "walking upstairs"
activity$V1[activity$V1 == 3] <- "walking downstairs"
activity$V1[activity$V1 == 4] <- "sitting"
activity$V1[activity$V1 == 5] <- "standing"
activity$V1[activity$V1 == 6] <- "laying"

mergedata <- data.frame(mergedata, activity) 		## add activity labels column to the dataset
colnames(mergedata)[80] <- "activity"			## rename new column

#4. Appropriately labels the data set with descriptive variable names. 

names(mergedata) <- gsub("[.]","", names(mergedata))
names(mergedata) <- gsub("tBody","", names(mergedata))		## see the code book for details
names(mergedata) <- gsub("fBody","transformed-", names(mergedata))	
names(mergedata) <- gsub("tGravity","gravity-", names(mergedata))
names(mergedata) <- gsub("Acc","acceleration-", names(mergedata))
names(mergedata) <- gsub("Gyro","gyroscopic-", names(mergedata))
names(mergedata) <- gsub("meanFreq","weighted-average", names(mergedata))
names(mergedata) <- gsub("Mag","magnitude-", names(mergedata))
names(mergedata) <- gsub("Jerk","jerk-", names(mergedata))
names(mergedata) <- gsub(" () ","", names(mergedata))
names(mergedata) <- gsub("X","-X-axis", names(mergedata))
names(mergedata) <- gsub("Y","-Y-axis", names(mergedata))
names(mergedata) <- gsub("Z","-Z-axis", names(mergedata))
names(mergedata) <- gsub("mean","mean", names(mergedata))
names(mergedata) <- gsub("std","standard-deviation", names(mergedata))
names(mergedata) <- gsub("Body","body-", names(mergedata))


#5. From the data set in step 4, creates a second, independent tidy data set
#   with the average of each variable for each activity and each subject.

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subjects <- rbind(subject_train, subject_test)		## create single subjects column
mergedata <- data.frame(mergedata, subjects)		## add subjects column to the dataset
colnames(mergedata)[81] <- "subject"			## rename new column

## calculate the mean of each variable, grouped by subject and activity
tidy_data <- aggregate(mergedata[1:79],by=list(subject=mergedata$subject, activity=mergedata$activity), mean)

### write txt file
write.table(tidy_data, "tidy_data.txt", row.names=F)
