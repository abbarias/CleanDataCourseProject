##Part 0: Setting up the relevant packages
require("reshape")

##Part 1: Merging the Data
features <- read.table("features.txt")
colnames(features)[2] <- "Feature"
features$Feature <- as.character(features$Feature)


##Building merged Training data
TrainSub <- read.table("./train/subject_train.txt")
TrainAct <- read.table("./train/y_train.txt") 
TrainX <- read.table("./train/X_train.txt") 
TrainRaw <- cbind(TrainSub, TrainAct, TrainX)

##Building merged Test data
TestSub <- read.table("./test/subject_test.txt")
TestAct <- read.table("./test/y_test.txt")
TestX <- read.table("./test/X_test.txt")
TestRaw <- cbind(TestSub, TestAct, TestX)

##Creating combined frame with column names
AllRaw <- rbind(TrainRaw,TestRaw)
colnames(AllRaw) = c("Subject","Activity",features$Feature)

##Part2: Extracting relevant columns
Meanindex <- 2+grep("mean()", features[,2],fixed=TRUE)
Devindex <- 2+grep("std", features[,2])
AllRawRel <- AllRaw[,c(1,2,Meanindex,Devindex)]

##Part3: Adding Activity names
ActLabels <- read.table("activity_labels.txt")
AllRawRel$Activity <- as.factor(AllRawRel$Activity)
levels(AllRawRel$Activity) <- ActLabels[,2]

##Part4: Adding Measurement Names
colnames(AllRawRel) <- gsub("-","", names(AllRawRel))
colnames(AllRawRel)[3:55] <- sub("t","Time", names(AllRawRel)[3:55], fixed=TRUE)
colnames(AllRawRel)[3:68] <- sub("f","Freq", names(AllRawRel)[3:68], fixed=TRUE)
colnames(AllRawRel) <- gsub("mean()","Means", names(AllRawRel), fixed=TRUE)
colnames(AllRawRel) <- gsub("std()","StandardDevMean", names(AllRawRel), fixed=TRUE)
colnames(AllRawRel) <- sub("BodyBody","Body", names(AllRawRel), fixed=TRUE)

colnames(AllRawRel) <- sub("Body","Body", names(AllRawRel), fixed=TRUE)
colnames(AllRawRel) <- sub("Acc","Accelerometer", names(AllRawRel), fixed=TRUE)
colnames(AllRawRel) <- sub("Gyro","Gyroscope", names(AllRawRel), fixed=TRUE)
colnames(AllRawRel) <- sub("Jerk","Jerk", names(AllRawRel), fixed=TRUE)
colnames(AllRawRel) <- sub("Mag","Magnitude", names(AllRawRel), fixed=TRUE)
colnames(AllRawRel) <- sub("Gravity","Gravity", names(AllRawRel), fixed=TRUE)


##Part5: Take the mean of the mean's and standard deviation'ss
melted <- melt(AllRawRel, id=c("Subject", "Activity"), na.rm = TRUE)
final <- cast(melted, Subject + Activity ~ variable, mean, na.rm = TRUE)

##write to a table
write.table(final, "./tidywearablemeans.txt",row.names = FALSE)
print("Your tidy data set is ready in your working directory. The filepath is ./tidywearablemeans.txt")

