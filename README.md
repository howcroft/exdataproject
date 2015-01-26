# exdataproject

## Scripts 
This section lists and describes each script of this project

###Run_analysis.R

This is the main script. Run this script to attain the clean data-set.
This script will join the training and testing dataset in consecutive rows.
The training data-set and testing data-set must be in the /train and /test subdirectories from the current directory.
It will also filter the observations that are averages and means, and afterwards average each of the 79 columns by Subject and Activity.

At the end the results (the clean data-set) is put in a outputs.txt file.
	
