# exdataproject

##CodeBook for the output dataset that results from the run_analysis.R

Each column, with the exception of "activity" and "Subject" represent the average value of all observations of an activity for each subject.
They are also all numeric.
The activity column has been "de-factored" to include the descriptive activity names as strings instead of the numerics ranged [1-6].
Please refer to original column descriptions in feature_info.txt (taken from original dataset).


E.g. column "tBodyAcc-mean()-X" contains the average of all observed values of Total Body acceleration mean for X-axis accelerometer reading

###	"tBodyAcc-mean()-X"
	Original dataset column position: 1
### "tBodyAcc-mean()-Y"
	Original dataset column position: 2
### "tBodyAcc-mean()-Z" 
	Original dataset column position: 3
### "tGravityAcc-mean()-X"
	Original dataset column position: 41
### "tGravityAcc-mean()-Y"
	Original dataset column position: 42
### "tGravityAcc-mean()-Z"
	Original dataset column position: 43
### "tBodyAccJerk-mean()-X"
	Original dataset column position: 81
### "tBodyAccJerk-mean()-Y"
	Original dataset column position: 82
### "tBodyAccJerk-mean()-Z"
	Original dataset column position: 83
### "tBodyGyro-mean()-X"
	Original dataset column position: 121
### "tBodyGyro-mean()-Y"
	Original dataset column position: 122
### "tBodyGyro-mean()-Z"
	Original dataset column position: 123
### "tBodyGyroJerk-mean()-X"
	Original dataset column position: 161
### "tBodyGyroJerk-mean()-Y"
	Original dataset column position: 162
### "tBodyGyroJerk-mean()-Z"
	Original dataset column position: 163
### "tBodyAccMag-mean()"
	Original dataset column position: 201
### "tGravityAccMag-mean()"
	Original dataset column position: 214
### "tBodyAccJerkMag-mean()"
	Original dataset column position: 227
### "tBodyGyroMag-mean()"
	Original dataset column position: 240
### "tBodyGyroJerkMag-mean()"
	Original dataset column position: 253
### "fBodyAcc-mean()-X"
	Original dataset column position: 266
### "fBodyAcc-mean()-Y"
	Original dataset column position: 267
### "fBodyAcc-mean()-Z"
	Original dataset column position: 268
### "fBodyAcc-meanFreq()-X"
	Original dataset column position: 294
### "fBodyAcc-meanFreq()-Y"
	Original dataset column position: 295
### "fBodyAcc-meanFreq()-Z"
	Original dataset column position: 296
### "fBodyAccJerk-mean()-X"
	Original dataset column position: 345
### "fBodyAccJerk-mean()-Y"
	Original dataset column position: 346
### "fBodyAccJerk-mean()-Z"
	Original dataset column position: 347
### "fBodyAccJerk-meanFreq()-X"
	Original dataset column position: 373
### "fBodyAccJerk-meanFreq()-Y"
	Original dataset column position: 374
### "fBodyAccJerk-meanFreq()-Z"
	Original dataset column position: 375
### "fBodyGyro-mean()-X"
	Original dataset column position: 424
### "fBodyGyro-mean()-Y"
	Original dataset column position: 425
### "fBodyGyro-mean()-Z"
	Original dataset column position: 426
### "fBodyGyro-meanFreq()-X"
	Original dataset column position: 452
### "fBodyGyro-meanFreq()-Y"
	Original dataset column position: 453
### "fBodyGyro-meanFreq()-Z"
	Original dataset column position: 454
### "fBodyAccMag-mean()"
	Original dataset column position: 503
### "fBodyAccMag-meanFreq()"
	Original dataset column position: 513
### "fBodyBodyAccJerkMag-mean()"
### "fBodyBodyAccJerkMag-meanFreq()"
### "fBodyBodyGyroMag-mean()"
### "fBodyBodyGyroMag-meanFreq()"
### "fBodyBodyGyroJerkMag-mean()"
### "fBodyBodyGyroJerkMag-meanFreq()"
### "tBodyAcc-std()-X"
### "tBodyAcc-std()-Y"
### "tBodyAcc-std()-Z"
### "tGravityAcc-std()-X"
### "tGravityAcc-std()-Y"
### "tGravityAcc-std()-Z"
### "tBodyAccJerk-std()-X"
### "tBodyAccJerk-std()-Y"
### "tBodyAccJerk-std()-Z"
### "tBodyGyro-std()-X"
### "tBodyGyro-std()-Y"
### "tBodyGyro-std()-Z"
### "tBodyGyroJerk-std()-X"
### "tBodyGyroJerk-std()-Y"
### "tBodyGyroJerk-std()-Z"
### "tBodyAccMag-std()"
### "tGravityAccMag-std()"
### "tBodyAccJerkMag-std()"
### "tBodyGyroMag-std()"
### "tBodyGyroJerkMag-std()"
### "fBodyAcc-std()-X"
### "fBodyAcc-std()-Y"
### "fBodyAcc-std()-Z"
### "fBodyAccJerk-std()-X"
### "fBodyAccJerk-std()-Y"
### "fBodyAccJerk-std()-Z"
### "fBodyGyro-std()-X"
### "fBodyGyro-std()-Y"
### "fBodyGyro-std()-Z"
### "fBodyAccMag-std()"
### "fBodyBodyAccJerkMag-std()"
### "fBodyBodyGyroMag-std()"
### "fBodyBodyGyroJerkMag-std()"
### "activity"
### "Subject"

 1   2   3  41  42  43  81  82  83 121 122 123 161 162 163 201 214 227 240 253 266 267 268 294 295 296 345 346 347 373
[31] 374 375 424 425 426 452 453 454 503 513 516 526 529 539 542 552   4   5   6  44  45  46  84  85  86 124 125 126 164 165
[61] 166 202 215 228 241 254 269 270 271 348 349 350 427 428 429 504 517 530 543 562
