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
	Original dataset column position: 516
### "fBodyBodyAccJerkMag-meanFreq()"
	Original dataset column position: 526
### "fBodyBodyGyroMag-mean()"
	Original dataset column position: 529
### "fBodyBodyGyroMag-meanFreq()"
	Original dataset column position: 539
### "fBodyBodyGyroJerkMag-mean()"
	Original dataset column position: 542
### "fBodyBodyGyroJerkMag-meanFreq()"
	Original dataset column position: 552
### "tBodyAcc-std()-X"
	Original dataset column position: 4
### "tBodyAcc-std()-Y"
	Original dataset column position: 5
### "tBodyAcc-std()-Z"
	Original dataset column position: 6
### "tGravityAcc-std()-X"
	Original dataset column position: 44
### "tGravityAcc-std()-Y"
	Original dataset column position: 45
### "tGravityAcc-std()-Z"
	Original dataset column position: 46
### "tBodyAccJerk-std()-X"
	Original dataset column position: 84
### "tBodyAccJerk-std()-Y"
	Original dataset column position: 85
### "tBodyAccJerk-std()-Z"
	Original dataset column position: 86
### "tBodyGyro-std()-X"
	Original dataset column position: 124
### "tBodyGyro-std()-Y"
	Original dataset column position: 125
### "tBodyGyro-std()-Z"
	Original dataset column position: 126
### "tBodyGyroJerk-std()-X"
	Original dataset column position: 165
### "tBodyGyroJerk-std()-Y"
	Original dataset column position: 165
### "tBodyGyroJerk-std()-Z"
	Original dataset column position: 166
### "tBodyAccMag-std()"
	Original dataset column position: 202
### "tGravityAccMag-std()"
	Original dataset column position: 215
### "tBodyAccJerkMag-std()"
	Original dataset column position: 228
### "tBodyGyroMag-std()"
	Original dataset column position: 241
### "tBodyGyroJerkMag-std()"
	Original dataset column position: 254
### "fBodyAcc-std()-X"
	Original dataset column position: 269
### "fBodyAcc-std()-Y"
	Original dataset column position: 270
### "fBodyAcc-std()-Z"
	Original dataset column position: 271
### "fBodyAccJerk-std()-X"
	Original dataset column position: 348
### "fBodyAccJerk-std()-Y"
	Original dataset column position: 349
### "fBodyAccJerk-std()-Z"
	Original dataset column position: 350
### "fBodyGyro-std()-X"
	Original dataset column position: 427
### "fBodyGyro-std()-Y"
	Original dataset column position: 428
### "fBodyGyro-std()-Z"
	Original dataset column position: 429
### "fBodyAccMag-std()"
	Original dataset column position: 504
### "fBodyBodyAccJerkMag-std()"
	Original dataset column position: 517
### "fBodyBodyGyroMag-std()"
	Original dataset column position: 530
### "fBodyBodyGyroJerkMag-std()"
	Original dataset column position: 543
### "activity" 
	Original dataset column position: not present (results from merging y_{train|test}.txt information)
### "Subject"
	Original dataset column position: not present (results from merging subject_{train|test}.txt information)