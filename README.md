tidy-data-coursera
==================
Course project for the Johns Hopkins Getting and Cleaning Data course on Coursera.org.
(course id.: getdata-009)

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.
The goal is to prepare tidy data that can be used for later analysis. 
Everyone will grade other peers' work on a series of yes/no questions related to the project.

The project is based on data experiments by:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


The following files are read and processed through the script :
================================================================

- 'features.txt': List of all features in the original dataset.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Training subjects id #.
- 'test/subject_test.txt': Test subjects id #.

How the script works:
=====================

The script has been built with R version 3.1.2, on a Windows Vista OS, and uses the basic packages of R.
It is divided into sections, accordingly with the course project instructions. As a consequence, it has been compiled to run the following operations, in order:
1. Merges the training and the test sets to create one data set, from the two data files provided (X-train.txt and X_test.txt).
2. Extracts the measurements on the mean and standard deviation for each measurement, by selecting the variables containing means and standard deviations. 
3. Defines descriptive activity names to name the activities in the data set, from the 'activity_labels.txt' file.
4. Appropriately labels the data set with descriptive variable names, by calling 'gsub' multiple times, in order to eliminate dots, underscores and white spaces from the variables' names.
5. Read the subjects id numbers files, in order to create a second, independent tidy data set with the average of each variable for each activity and each subject.
6. Writes the text file "tidy_data.txt".



