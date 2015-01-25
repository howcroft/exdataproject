# Getting and cleaning data
# Course Project

#setwd("C:/Users/ahf/Desktop/lectures_etc/coursera/jhopkins/getting-and-cleaning-data/course-project/dataset/UCI HAR Dataset")

#Download an prepare dataset
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
localNameZipped <- "Dataset.zip"
localDirectory <- "./dataset"
download.file(fileURL, localNameZipped)
unzip(localNameZipped, exdir=localDirectory)

#Read in train and create table
trainSetX <- read.table("./train/X_train.txt", header = F, stringsAsFactors= F)
trainSetY <- read.table("./train/y_train.txt", header = F, stringsAsFactors= F)
trainSet <- cbind(trainSetX, trainSetY)
rm(trainSetX)
rm(trainSetY)

#Read in test set and create table
testSetX <- read.table("./test/X_test.txt", header = F, stringsAsFactors= F)
testSetY <- read.table("./test/y_test.txt", header = F, stringsAsFactors= F)
testSet <- cbind(testSetX, testSetY)
rm(testSetX)
rm(testSetY)                      


#Read in feature names
featureNames <- read.table("./features.txt", header = F, stringsAsFactors= F)
featureNames <- c(featureNames[,2], "activity")


#1. Merges the training and the test sets to create one data set.
#Merge test and train by this order (in a row order)
# Could have created a list with two data-frame. But didn't
names(trainSet) <- featureNames
names(testSet) <- featureNames
dataSet <- rbind(trainSet, testSet)
rm(testSet)
rm(trainSet)

#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
a <- grep("mean", featureNames)
b <- grep("std", featureNames)
c <- c(a,b)
dataSetFiltered <- dataSet[, c]

#3. Uses descriptive activity names to name the activities in the data set
#set the walking, running sleeping etc, directly on factor column (activity?)
activityName 

#4. Appropriately labels the data set with descriptive variable names. 
#Label columns
?????

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
????
subjectFilterTrain <- read.table("./train/subject_train.txt", header = F, stringsAsFactors= F)
subjectFilterTest <- read.table("./test/subject_test.txt", header = F, stringsAsFactors= F)
subjectFilter <- rbind(subjectFilterTrain, subjectFilterTest)
rm(subjectFilterTrain)
rm(subjectFilterTest)




#factor on last column (Y)

#write the clean dataset to file:
zz <- file("ex.data", "w")  # open an output file connection
cat("TITLE extra line", "2 3 5 7", "", "11 13 17", file = zz, sep = "\n")
cat("One more line\n", file = zz)
close(zz)
readLines("ex.data")
unlink("ex.data")

