---
title: "Tidy Wearables Data Script README"
author: "Alan Arias"
date: "Saturday, May 23, 2015"
output: html_document
---

The "run_analysis.R" script in this folder merges data on 30 Subjects performing 6 Activities while wearing a Sansung Galaxy SII phone on their waste. Once you have downloaded and unzipped the Samsung data, can see the README by setting your working directory to extract destination and going to: "/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/README.txt"

**TO RUN THE SCRIPT SUCCESSFULLY**  
Save the "run_analysis.R" script to the root folder of the data set, which is located (starting at folder where you unzipped/extracted your files) at "/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/". Otherwise, the script WILL NOT WORK.  

**THE PARTS OF THE SCRIPT**  
**Part 0: Setup**  
-Checks for the required R packages and downloads them if they are missing.  

**Part 1: Merge the Data**  
-Reads the features for the observations and assigns them a character class.  
-Reads the Train data for Subject being measured, Activity being measured, and all of their feature measurements, then binds the columns in that order to a new data frame.  
-Reads the Test data for Subject being measured, Activity being measured, and all of their feature measurements, then binds the columns in that order to a new data frame.  
-Binds the two data frames into a new frame via rbind.  
-Assigns column names for the Subject and Activity; indexes "features.txt" for measurement column names.  
  

**Part 2: Extract Relevant Data**  
-Uses the "features.txt" file to index columns containing data on the mean and std of different measurements. DOES NOT include columns including the weighted average of the frequency ("meanFreq()") as we are interested in the average measurements, not the components.  
-Creates subsetted data frame with the Subject, Activity, and indexed columns.  
  
**Part 3: Add Activity Names**   
-Indexes Activity names from the "activity_labels.txt" file.  
-Changes subsetted data frame Activity column class to factor and set the levels to descriptive actvities using the "activity_labels.txt" index.  
  
**Part 4: Add Measurement Names**  
-Transforms the measurement column names so that they show un-abbreviated names of the measurements, without spaces and with the first letter of each word capitalized.  
  
**Part 5: Calculate the Means**  
-Uses the "reshape" package to melt down the data frame, preserving "Subject" and "Activity" as id's.  
-Calculates the means of the intersections between each subject, activity, and measurement using the cast function.  
-Writes the tidy data frame to a file "./tidywearablemeans.txt", stored in the working directory (which should also be the root directory of the Samsung data).  
-Prints a statement summarizing the script actvity.  
  
