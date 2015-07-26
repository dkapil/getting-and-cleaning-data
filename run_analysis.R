## Script to analyse the data from different components and convert it into a tidy data.
## This script uses features.txt for feature names, activity_labels.txt for activity names
## vector.
## subject_train.txt/subject_test.txt for vector having subject ids, X_train/X_test for signal values and
## y_train/y_test for vector denoting activity performed.
run_analysis<-function(directory=getwd())
{
        require(dplyr)
        setwd(dir = directory)
        # Extracting Requird Features Names And Indexes
        allFeatureNames<-read.table(file="features.txt",sep="",col.names = c("sr","name"))
        
        timeDerivedIndexes<-c(1:6,41:46,81:86,121:126,161:166)
        
        eucleadianNormIndexes<-c(201:202,214:215,227:228,240:241,253:254)
        
        fftIndexes<-c(266:271,345:350,424:429)
        
        angleIndexes<-c(555:561)
        
        requiredIndexes<-c(timeDerivedIndexes,eucleadianNormIndexes,fftIndexes,angleIndexes)
        requiredFeatureNames<-allFeatureNames[requiredIndexes,]
        
        # Extracting Train Data
        trainData<-read.table(file="train/X_train.txt",header = FALSE)
        requiredTrainData<-select(trainData,requiredIndexes)
        
        # Setting column names on signals
        colnames(requiredTrainData)<-as.character(requiredFeatureNames$name)
        
        # Extracting subject ids
        subjectidTrain<-read.table(file="train/subject_train.txt",col.names = c("subject_id"),colClasses = c("numeric"))
        
        # Extracting activity vector
        activityVectorTrain<-read.table(file="train/y_train.txt",col.names = c("activity"))
        
        # Merging subject id,signal values and activity labels
        completeTrainData=cbind(subjectidTrain,activityVectorTrain,requiredTrainData)
        
        # Extracting Test Data
        testData<-read.table(file="test/X_test.txt",header = FALSE)
        requiredTestData<-select(testData,requiredIndexes)
        
        # Setting column names on signals
        colnames(requiredTestData)<-as.character(requiredFeatureNames$name)
        
        # Extracting subject ids
        subjectidTest<-read.table(file="test/subject_test.txt",col.names = c("subject_id"),colClasses = c("numeric"))
        
        # Extracting activity vector
        activityVectorTest<-read.table(file="test/y_test.txt",col.names = c("activity"))
        
        # Merging subject id,signal values and activity labels
        completeTestData=cbind(subjectidTest,activityVectorTest,requiredTestData)
        
        
        #Merging Test Data and Train Data
        mergedData<-rbind(completeTrainData,completeTestData)
        
        
        
        # Arranging signals on subject id and activity labels
        mergedData<-arrange(mergedData,subject_id,activity)
        
        # Creating activity labels and replace activity numbers by labels.
        activityLabels<-c("1"="WALKING","2"="WALKING_UPSTAIRS","3"="WALKING_DOWNSTAIRS","4"="SITTING","5"="STANDING","6"="LAYING")
        mergedData$activity=activityLabels[mergedData$activity]
        
        # Setting descriptive column names
        names(mergedData) <- gsub("^t", "Time", names(mergedData))
        names(mergedData) <- gsub("^f", "Frequency", names(mergedData))
        names(mergedData) <- gsub("-mean\\(\\)", "Mean", names(mergedData))
        names(mergedData) <- gsub("-std\\(\\)", "StdDev", names(mergedData))
        names(mergedData) <- gsub("-", "", names(mergedData))
        
        finaldata<-summarise_each(group_by(mergedData,subject_id,activity),funs(mean))
        write.table(finaldata,file="cleaned_data.txt",row.names = FALSE,quote = FALSE)
}