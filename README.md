Introduction
------------
This is the course project for the Coursera course Getting and Cleaning Data. The objective of the project is to create a tidy dataset out of raw data collected from the accelerometers from the Samsung Galaxy S smartphone.

About the script
----------------
A script "run_analysis.R" is used to process the raw data and create a tidy data set. To run the script, you need to:
* Download the raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzip it to a working directory
* Put the script "run_analysis.R" in the root directory of the raw data set
* Run the script by running the source("run_analysis.R") command in RStudio

This should create a file "tidy_data.txt" which is the independent tidy data set with the average of each variable for each activity and each subject.

Cookbook
--------
The file cookbook.md describe the details about the variables, the data, and any transformations or work that are performed to clean up the data.

