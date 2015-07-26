# CodeBook
## This code book contains variable names used in tidy data and their description. Variables are mentioned exactly in the order as they are used in the data set.

---

## Time Domain Measurements
- Body Acceleration Mean Time Domain in X,Y,Z direction respectively
    - **TimeBodyAccMeanX** 
    - **TimeBodyAccMeanY** 
    - **TimeBodyAccMeanZ** 
- Body Acceleration Standard Deviation in X,Y,Z direction respectively
    - **TimeBodyAccStdDevX** 
    - **TimeBodyAccStdDevY**
    - **TimeBodyAccStdDevZ** 
- Gravity Acceleration Mean in X,Y,Z direction respectively
    - **TimeGravityAccMeanX**
    - **TimeGravityAccMeanY**
    - **TimeGravityAccMeanZ**
- Gravity Acceleration Standard Deviation in X,Y,Z direction respectively
    - **TimeGravityAccStdDevX** 
    - **TimeGravityAccStdDevY** 
    - **TimeGravityAccStdDevZ** 
- Body Acceleration Jerk Mean in X,Y,Z direction respectively
    - **TimeBodyAccJerkMeanX** 
    - **TimeBodyAccJerkMeanY** 
    - **TimeBodyAccJerkMeanZ** 
- Body Acceleration Jerk Standard Deviation in X,Y,Z direction respectively
    - **TimeBodyAccJerkStdDevX** 
    - **TimeBodyAccJerkStdDevY** 
    - **TimeBodyAccJerkStdDevZ** 
- Body Gravitational Mean in X,Y,Z direction respectively
    - **TimeBodyGyroMeanX** 
    - **TimeBodyGyroMeanY** 
    - **TimeBodyGyroMeanZ** 
- Body Gravitational Standard Deviation in X,Y,Z direction respectively
    - **TimeBodyGyroStdDevX** -
    - **TimeBodyGyroStdDevY** -
    - **TimeBodyGyroStdDevZ** -
- Body Gravitational Jerk Mean in X,Y,Z direction respectively
    - **TimeBodyGyroJerkMeanX**
    - **TimeBodyGyroJerkMeanY** 
    - **TimeBodyGyroJerkMeanZ**
- Body Gravitational Jerk Standard Deviation in X,Y,Z direction respectively
    - **TimeBodyGyroJerkStdDevX** 
    - **TimeBodyGyroJerkStdDevY** 
    - **TimeBodyGyroJerkStdDevZ**

## Eucleadian Norm Measurements
- Body Acceleration Eucleadian Norm Mean
    - **TimeBodyAccMagMean** 
- Body Acceleration Eucleadian Norm Standard Deviation
    - **TimeBodyAccMagStdDev** 
- Gravtational Acceleration Eucleadian Norm Mean
    - **TimeGravityAccMagMea**
- Gravtational Acceleration Eucleadian Norm Standard Deviation
    - **TimeGravityAccMagStdDev**
- Body Acceleration Jerk Eucleadian Norm Mean
    - **TimeBodyAccJerkMagMean** 
- Body Acceleration Jerk Eucleadian Norm Standard Deviation
    - **TimeBodyAccJerkMagStdDev**
- Body Gravitation Eucleadian Norm Mean
    - **TimeBodyGyroMagMean** 
- Body Gravitation Eucleadian Norm Standard Deviation
    - **TimeBodyGyroMagStdDev**
- Body Gravitation Jerk Eucleadian Norm Mean
    - **TimeBodyGyroJerkMagMean** 
- Body Gravitation Jerk Eucleadian Norm Standard Deviation
    - **TimeBodyGyroJerkMagStdDev**

## Frequency Domain Measurements
- Body Acceleration Frequency Mean in X,Y,Z direction respectively
    - **FrequencyBodyAccMeanX**
    - **FrequencyBodyAccMeanY**
    - **FrequencyBodyAccMeanZ** 
- Body Acceleration Frequence Standard Deviation in X,Y,Z direction respectively
    - **FrequencyBodyAccStdDevX**
    - **FrequencyBodyAccStdDevY** 
    - **FrequencyBodyAccStdDevZ**
- Body Acceleration Jerk Frequency Mean in X,Y,Z direction respectively
    - **FrequencyBodyAccJerkMeanX**
    - **FrequencyBodyAccJerkMeanY** 
    - **FrequencyBodyAccJerkMeanZ**
- Body Acceleration Jerk Frequency Standard Deviation in X,Y,Z direction respectively
    - **FrequencyBodyAccJerkStdDevX**
    - **FrequencyBodyAccJerkStdDevY** 
    - **FrequencyBodyAccJerkStdDevZ** 
- Body Gravitation Frequency Mean in X,Y,Z direction respectively
    - **FrequencyBodyGyroMeanX**
    - **FrequencyBodyGyroMeanY** 
    - **FrequencyBodyGyroMeanZ**
- Body Gravitation Frequency Standard Deviation in X,Y,Z direction respectively
    - **FrequencyBodyGyroStdDevX**
    - **FrequencyBodyGyroStdDevY** 
    - **FrequencyBodyGyroStdDevZ** 

## Averaged Meausurements in a Signal Window Sample
- Average Body Acceleration Mean
    -  **angle(tBodyAccMean,gravity)**
- Average Body Acceleration Jerk Mean
    -  **angle(tBodyAccJerkMean),gravityMean)** 
- Average Body Gravitational Mean
    -  **angle(tBodyGyroMean,gravityMean)** 
- Average Body Gravitational Jerk Mean
    -  **angle(tBodyGyroJerkMean,gravityMean)**
- Average Mean in X,Y,Z direction
    -  **angle(X,gravityMean)**
    -  **angle(Y,gravityMean)** 
    -  **angle(Z,gravityMean)**
