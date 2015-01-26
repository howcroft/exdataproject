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
#Activity is the last column added in previous commands, hence 562
c <- c(a,b, 562)
dataSetFiltered <- dataSet[, c]

#3. Uses descriptive activity names to name the activities in the data set
#set the walking, running sleeping etc, directly on factor column (activity?)
activityNames <- read.table("./activity_labels.txt", header = F, stringsAsFactors= F)
#featureNames <- c(featureNames[,2], "activity")
#Give the activity names to the levels. Levels are already ordered
levels(dataSetFiltered[,80]) <- activityNames[,2]


#4. Appropriately labels the data set with descriptive variable names. 
#Label columns
#Already done in previous steps of the code, see lines 29-37
#Pasted
#featureNames <- read.table("./features.txt", header = F, stringsAsFactors= F)
#featureNames <- c(featureNames[,2], "activity")



#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
subjectFilterTrain <- read.table("./train/subject_train.txt", header = F, stringsAsFactors= F)
subjectFilterTest <- read.table("./test/subject_test.txt", header = F, stringsAsFactors= F)
subjectFilter <- rbind(subjectFilterTrain, subjectFilterTest)
rm(subjectFilterTrain)
rm(subjectFilterTest)


dataSetFiltered <- cbind(dataSetFiltered, subjectFilter)
#Label appropriately
names(dataSetFiltered)[81] <- "Subject"
columnNames <- names(dataSetFiltered)
dataSetSubjectsSplit <- split(dataSetFiltered, dataSetFiltered$Subject)

#validation
#sum(subjectFilter[,1] == 24)
#temp <- dataSetFiltered[subjectFilter[,1] == 24,]
#temp <- temp[temp[80] == "WALKING",]
#validateSub24MeanWalking <- colMeans(temp[,1:79])
#validateSub24MeanWalking[1]

dataSetSubjectsSplitActivitySubSplit <- lapply(dataSetSubjectsSplit, function (x) {split(x, x$activity)})
#cleanData <- lapply(dataSetSubjectsSplitActivitySubSplit, function(x){ lapply(x, function(y) { c(colMeans(y[,1:79]),  y[1,80], y[1, 81])}) })
cleanData2 <- lapply(dataSetSubjectsSplitActivitySubSplit, function(x){ lapply(x, function(y) { c(colMeans(y[,1:79]),  y[1,80], y[1, 81])}) })

#cleanData2 <-  unlist(cleanData, recursive=FALSE)
cleanData2<- unlist(cleanData2, recursive = FALSE)
names(cleanData2) <- columnNames
outputCleanData <- as.data.frame(do.call(rbind, cleanData2))
rm(cleanData)


write.table(outputCleanData, file="output.txt", row.names = FALSE, col.names = FALSE);
