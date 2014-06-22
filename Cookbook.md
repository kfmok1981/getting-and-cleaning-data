Cookbook
========

About the variables
===================
The tidy dataset have 68 variables. The first two variables are subject and activity respectively.
Subject denotes one of the 30 subjects who carries the experiment.
Activity describes one of the six actions: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
The remaining 66 variables correspond to average value of the measurement for each activity and each subject.
The "features.txt" file in the raw dataset contain all the measurements. The "features_info.txt" describes the meaning for the measurement.
For this project, only the measurements on the mean and standard deviation is extracted.

About the data
==============
Each row of the tidy data set represents the average value of each of the measurements for each activity and each subject.
The data is taken from the training data set and the testing data set.
The activity are transformed to use labels like WALKING, WALKING_UPSTAIRS etc. to make the activity name more descriptive.