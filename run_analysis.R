#######################################################################################################
# 1. This script will run sucessfully only when the zip file will be extracted inside ./data folder.  #
# data folder is a sub folder inside the working directory.                                           #
# 2. This script has been tested in Mac (OSX 10.9.3) operating system,                                #
# it can behave differently in other OS                                                               # 
#######################################################################################################

# Setting up some variables for this script file
data.dir               <- './data/UCI HAR Dataset'
tidy.data.dir          <-'./data'
trainset.file.path     <- 'train/X_train.txt' 
testset.file.path      <- 'test/X_test.txt' 
trainlabels.file.path  <- 'train/Y_train.txt' 
testlabels.file.path   <- 'test/Y_test.txt' 
trainsubject.file.path <- 'train/subject_train.txt' 
testsubject.file.path  <- 'test/subject_test.txt' 

#####################################################################
# 1. Merges the training and the test sets to create one data set. ##
#####################################################################
# Read the train and test data files
data.trainset <- read.table(paste(data.dir,trainset.file.path, sep = '/'),header = FALSE)
data.testset <- read.table(paste(data.dir,testset.file.path, sep = '/'),header = FALSE)

# Combine train and test data sets
data.x <-rbind(data.trainset,data.testset)

# Read the train and test labels
data.trainlabels <- read.table(paste(data.dir,trainlabels.file.path, sep = '/'),header = FALSE)
data.testlabels <- read.table(paste(data.dir,testlabels.file.path, sep = '/'),header = FALSE)

# Combine train and test labels
data.y <-rbind(data.trainlabels,data.testlabels)

# Read the train and test subjects
data.trainsubject <- read.table(paste(data.dir,trainsubject.file.path, sep = '/'),header = FALSE)
data.testsubject <- read.table(paste(data.dir,testsubject.file.path, sep = '/'),header = FALSE)

# Combine train and test subjects
data.subject <-rbind(data.trainsubject,data.testsubject)

#############################################################################################
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.# 
#############################################################################################

# Read all features and set columnname
data.features <- read.table(paste(data.dir, 'features.txt', sep = '/'),header = FALSE)
names(data.features) <- c('id', 'feature')

# Extracts the measurements on the mean and standard deviation
targeted.features<-grep('mean|std', data.features$feature)
data.x<-data.x[,targeted.features]



###############################################################################
# 3. Uses descriptive activity names to name the activities in the data set   #
###############################################################################

# Read all activity labels
data.activity <- read.table(paste(data.dir, 'activity_labels.txt', sep = '/'),header = FALSE)
names(data.activity) <- c('id', 'activity')

# setting up descriptive activity names in the data set
data.y[,1]= data.activity[data.y[,1],"activity"]


##########################################################################
# 4. Appropriately labels the data set with descriptive variable names.  #
##########################################################################
names(data.x)<-data.features[targeted.features,"feature"]
names(data.y) <- "activity"
names(data.subject) <- "subject"

data.tidy<-cbind(data.subject,data.y,data.x)

# create the tidy data set file
write.table(data.tidy, paste(tidy.data.dir, 'tidy_data.txt', sep = '/'))

############################################################################
# 5. Creates a second, independent tidy data set with the average of each  #
#    variable for each activity and each subject.                          #
############################################################################

# Compute the averages (variable 3 to last variable)  by each activity and each subject

data.avg.tidy <- aggregate(data.tidy[,3:dim(data.tidy)[2]],
                            list(data.tidy$subject,
                            data.tidy$activity),mean)

# Setting up labels for Group1 & Group2
names(data.avg.tidy)[1:2] <- c('subject', 'activity')

# Create the second tidy data set
write.table(data.avg.tidy,paste(tidy.data.dir, 'tidy_avg_data.txt', sep = '/'))