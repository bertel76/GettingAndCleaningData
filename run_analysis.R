
# Merge training and test data
x.train <- read.table('./UCI HAR Dataset/train/X_train.txt')
x.test <- read.table('./UCI HAR Dataset/test/X_test.txt')
x <- rbind(x.train, x.test)

subject.train <- read.table('./UCI HAR Dataset/train/subject_train.txt')
subject.test <- read.table('./UCI HAR Dataset/test/subject_test.txt')
subject <- rbind(subject.train, subject.test)

y.train <- read.table('./UCI HAR Dataset/train/y_train.txt')
y.test <- read.table('./UCI HAR Dataset/test/y_test.txt')
y <- rbind(y.train, y.test)

# Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table('./UCI HAR Dataset/features.txt')
mean.sd <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
x.mean.sd <- x[, mean.sd]

# Uses descriptive activity names to name the activities in the data set
names(x.mean.sd) <- features[mean.sd, 2]
names(x.mean.sd) <- tolower(names(x.mean.sd)) 
names(x.mean.sd) <- gsub("\\(|\\)", "", names(x.mean.sd))

activities <- read.table('./UCI HAR Dataset/activity_labels.txt')
activities[, 2] <- tolower(as.character(activities[, 2]))
activities[, 2] <- gsub("_", "", activities[, 2])

y[, 1] = activities[y[, 1], 2]
colnames(y) <- 'activity'
colnames(subject) <- 'subject'

# Labels the data set with descriptive activity names.
data <- cbind(subject, x.mean.sd, y)
str(data)
write.table(data, './merged.txt')

# Creates a tidy data set with the average of each variable for each activity and each subject. 
average <- aggregate(x=data, by=list(activities=data$activity, subject=data$subject), FUN=mean)
write.table(average, './average_tidy.txt')

