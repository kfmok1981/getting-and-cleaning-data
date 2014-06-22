# Step 1. Merges the training and the test sets to create one data set.

x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

merged_data <- rbind(x_train, x_test)
merged_label <- rbind(y_train, y_test)
merged_subject <- rbind(subject_train, subject_test)

# Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.

features <- read.table("features.txt")

column_indexes <- grep("mean\\(\\)|std\\(\\)", features[, 2])
merged_data <- merged_data[, column_indexes]

names(merged_data) <- features[column_indexes, 2]

# Step 3. Uses descriptive activity names to name the activities in the data set

activity <- read.table("activity_labels.txt")
merged_label[,1] <- activity$V2[merged_label[,1]]
names(merged_label) <- c("acitivity")

# Step 4. Appropriately labels the data set with descriptive variable names.
names(merged_subject) <- "subject"
result <- cbind(merged_subject, merged_label, merged_data)

# Step 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
tidy_data <- aggregate( result[,3:68], result[,1:2], FUN = mean)

write.table(tidy_data, "tidy_data.txt")
