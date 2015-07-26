# Tidy Data Set | Human Activity Recognition Using Smartphones Dataset
----
Analysis and conversion of raw data set to tidy data set was done in following steps
  ## Extracting Feature Names
   - Extracting feature names from `features.txt`.
   - Since only the required features were needed from this huge list of 561 features.Required features were extracted from this list. This could have been done by either randomly searching through the whole list of features and pick columns names that have "mean" or "std" in their names using **grep** command. But to actually be sure of that we are picking only the necessary columns. Manually extracted the indexes of mean and time duration for time derived, eucleadian norm, fourier transform and angle derivation and use those indexes to extract required feature names and further the same indexes was used to extract required measurements from `subject_train.txt` & `subject_test1.txt` This was done as follows.
   -     timeDerivedIndexes<-c(1:6,41:46,81:86,121:126,161:166)
         eucleadianNormIndexes<-c(201:202,214:215,227:228,240:241,253:254)
         fftIndexes<-c(266:271,345:350,424:429)
         angleIndexes<-c(555:561)
         requiredIndexes<-c(timeDerivedIndexes,eucleadianNormIndexes,fftIndexes,angleIndexes)
 ## Extracting Required Features(Measurements)
- Required features(measurements) were extracted from test/train directory from the file `subject_train.txt` or `subject_test.txt` and were subsetted using the *reqiuiredIndexes* created in step 1.
## Extracting Subject Id
- Subject id were extracted from `X_train.txt` or `X_test.txt`.
## Extracting Activity Vector
- Activity corresponding to each event was taken from `y_train.txt` or `y_test.txt`.
## Combining Subject IDs, Features and Activity Vector
- Subjectids, features(measurements) and activity vector extracted in step 2,3,4 were column binded using
-      requiredSignals=cbind(subjectid,activityVector,requiredSignals)
## Merging Test and Train Data Set
- Step 2,3 and 4 were executed first for train data set and then for test data set and finally both the results were row binded using **rbind** command.
## Sorting Data
- Merged data obtained in previous step was sorted in the order of first by subject id and then by activity vector to have nice representation in the form of per subject per activity measurements.
## Replacing Activity Numbers by Label
- Activity labels were taken from `activity_labels.txt` and a replacement vector was created to replace activity numbers by their actual labels.
-     activityLabels<-c("1"="WALKING","2"="WALKING_UPSTAIRS","3"="WALKING_DOWNSTAIRS","4"="SITTING","5"="STANDING","6"="LAYING")
- This was used to replace the column values in activity column by labels.
## Setting/Replacing Column Names by Descriptive Column names
- Column names were converted into descriptive column names using gsub for replacing some of the patterns such as *time* for *t* *frequency* for *f* etc.
## Summarizing Data
- Data was summarized using **summarise_each** function of *dplyr* package using *mean* as a function and *grouped_by* *subject id*.
## Writing Data
- Finally as a last step cleaned data was written into a **cleaned_data.txt** file with *row.names=FALSE* and *quote=FALSE* parameter.

##### NOTE : The script run_analysis.R contains a function run_analysis(directory) that accepts a directory and assumes that the directory will have the structure of following form
-   test
    -   subject_test.txt
    -   X_test.txt
    -   y_test.txt
- train
    - subject_train.txt
    - X_train.txt
    - y_train.txt
- features.txt
- activity_labels.txt


  



