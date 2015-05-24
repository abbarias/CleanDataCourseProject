---
title: "Codebook"
author: "Alan Arias"
date: "Sunday, May 24, 2015"
output: html_document
---
**Summary**  
This tidy data set summarizes experimental data collected by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto (See atribution at the end) of 30 subjects conducting 6 different activities while wearing a Samsung Galaxy S II phone on their waist. This tidy set computes means for each combination of subject, actvity and measurement (either Mean or Standard Deviation from the original set) and summarizes means of those combinations for all orginal observations in a table of 180 observation rows by 68 column variables, of which only the last 66 columns contain mean measurements. 

**The Data**  
Mean measurements are aggregated based on Subject and Activity, where Subjects are assigned a number 1-30, and activities are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

Explanation of the orginal measurements, from *Reyes-Ortiz, et al* (with variable label replacements):
"The [measurements] selected for this database come from the accelerometer and gyroscope 3-axial raw signals [TimeAccelerometerXYZ] and [TimeGyroscopeXYZ]. These time domain signals[...]were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals ([TimeBodyAccelerometerXYZ] and [TimeGravityAccelerometerXYZ]) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals ([TimeBodyAccelerometerJerkXYZ] and [TimeBodyGyroscopeJerkXYZ]). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm ([TimeBodyAccelerometerMagnitude, TimeGravityAccelerometerMagnitude, TimeBodyAccelerometerJerkMagnitude, TimeBodyGyroscopeMagnitude, TimeBodyGyroscopeJerkMagnitude]). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing [FreqBodyAccelerometerXYZ, FreqBodyAccelerometerJerkXYZ, FreqBodyGyroscopeXYZ, FreqBodyAccelerometerMagnitude, FreqBodyAccelerometerJerkMagnitude, FreqBodyGyroscopeMagnitude, and FreqBodyGyroscopeJerkMagnitude]. (Note the 'Freq' to indicate frequency domain signals)."

**Units**  
- Measurements are expressed in terms of "g" and are normalized and bounded within [-1,1].

**The Combination Variables**  

Subject and Activity  
The following Subject and Activity measures were used:  

Subject  
  -1:30  
  
Activity  
  -WALKING   
  -WALKING_UPSTAIRS   
  -WALKING_DOWNSTAIRS   
  -SITTING   
  -STANDING   
  -LAYING  

Measurements   
The following signals were used to calculate means of estimates for the variables of the feature vector for each Subject-Activity combination: XYZ' is used to denote 3-axial signals in the X, Y and Z directions:  

TimeBodyAccelerometerXYZ  
TimeGravityAccelerometerXYZ  
TimeBodyAccelerometerJerkXYZ  
TimeBodyGyroscopeXYZ  
TimeBodyGyroscopeJerkXYZ  
TimeBodyAccelerometerMagnitude  
TimeGravityAccelerometerMagnitude  
TimeBodyAccelerometerJerkMagnitude  
TimeBodyGyroscopeMagnitude  
TimeBodyGyroscopeJerkMagnitude  
FreqBodyAccelerometerXYZ  
FreqBodyAccelerometerJerkXYZ  
FreqBodyGyroscopeXYZ  
FreqBodyAccelerometerMagnitude  
FreqBodyAccelerometerJerkMagnitude  
FreqBodyGyroscopeMagnitude  
FreqBodyGyroscopeJerkMagnitude  

Calculated Values  
For each of the measurement combinations, the frame shows the following values:  

Means: Mean value of the orginal data Means                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
StandardDevMean: Mean value of the orginal data Standard Deviations

-NOTE: meanFreq() was excluded from the data set as the assignment called explicitly for means of the force measurements, not of frequencies.  


**Table Index**  

ID Columns (Column definitions used for aggregating):
1.  Subject--Subject Number  
      -1:30  
2.  Activity--Activity the Subject was conducting
      -WALKING  
      -WALKING_UPSTAIRS  
      -WALKING_DOWNSTAIRS  
      -SITTING  
      -STANDING  
      -LAYING  
        
  
Row Indices(By Subject-Activity Column Pairing):    
    1.  (Column Name)  
    2.  1  WALKING   
    3.	1	WALKING_UPSTAIRS   
    4.	1	WALKING_DOWNSTAIRS   
    5.	1	SITTING   
    6.	1	STANDING   
    7.	1	LAYING   
    8.	2	WALKING   
    9.	2	WALKING_UPSTAIRS   
    10.	2	WALKING_DOWNSTAIRS   
    11.	2	SITTING   
    12.	2	STANDING   
    13.	2	LAYING   
    14.	3	WALKING   
    15.	3	WALKING_UPSTAIRS   
    16.	3	WALKING_DOWNSTAIRS   
    17.	3	SITTING   
    18.	3	STANDING   
    19.	3	LAYING   
    20.	4	WALKING   
    21.	4	WALKING_UPSTAIRS   
    22.	4	WALKING_DOWNSTAIRS   
    23.	4	SITTING   
    24.	4	STANDING   
    25.	4	LAYING   
    26.	5	WALKING   
    27.	5	WALKING_UPSTAIRS   
    28.	5	WALKING_DOWNSTAIRS   
    29.	5	SITTING   
    30.	5	STANDING    
    31.	5	LAYING   
    32.	6	WALKING   
    33.	6	WALKING_UPSTAIRS   
    34.	6	WALKING_DOWNSTAIRS   
    35.	6	SITTING   
    36.	6	STANDING   
    37.	6	LAYING   
    38.	7	WALKING   
    39.	7	WALKING_UPSTAIRS   
    40.	7	WALKING_DOWNSTAIRS   
    41.	7	SITTING   
    42.	7	STANDING   
    43.	7	LAYING   
    44.	8	WALKING   
    45.	8	WALKING_UPSTAIRS   
    46.	8	WALKING_DOWNSTAIRS   
    47.	8	SITTING   
    48.	8	STANDING   
    49.	8	LAYING   
    50.	9	WALKING   
    51.	9	WALKING_UPSTAIRS   
    52.	9	WALKING_DOWNSTAIRS   
    53.	9	SITTING   
    54.	9	STANDING   
    55.	9	LAYING   
    56.	10	WALKING   
    57.	10	WALKING_UPSTAIRS   
    58.	10	WALKING_DOWNSTAIRS   
    59.	10	SITTING   
    60.	10	STANDING   
    61.	10	LAYING   
    62.	11	WALKING   
    63.	11	WALKING_UPSTAIRS   
    64.	11	WALKING_DOWNSTAIRS   
    65.	11	SITTING   
    66.	11	STANDING   
    67.	11	LAYING   
    68.	12	WALKING   
    69.	12	WALKING_UPSTAIRS   
    70.	12	WALKING_DOWNSTAIRS   
    71.	12	SITTING   
    72.	12	STANDING   
    73.	12	LAYING   
    74.	13	WALKING   
    75.	13	WALKING_UPSTAIRS   
    76.	13	WALKING_DOWNSTAIRS   
    77.	13	SITTING   
    78.	13	STANDING   
    79.	13	LAYING   
    80.	14	WALKING   
    81.	14	WALKING_UPSTAIRS   
    82.	14	WALKING_DOWNSTAIRS   
    83.	14	SITTING   
    84.	14	STANDING   
    85.	14	LAYING  
    86.	15	WALKING  
    87.	15	WALKING_UPSTAIRS  
    88.	15	WALKING_DOWNSTAIRS  
    89.	15	SITTING  
    90.	15	STANDING  
    91.	15	LAYING  
    92.	16	WALKING  
    93.	16	WALKING_UPSTAIRS  
    94.	16	WALKING_DOWNSTAIRS   
    95.	16	SITTING   
    96.	16	STANDING   
    97.	16	LAYING   
    98.	17	WALKING   
    99.	17	WALKING_UPSTAIRS   
    100.	17	WALKING_DOWNSTAIRS   
    101.	17	SITTING   
    102.	17	STANDING   
    103.	17	LAYING   
    104.	18	WALKING   
    105.	18	WALKING_UPSTAIRS   
    106.	18	WALKING_DOWNSTAIRS   
    107.	18	SITTING   
    108.	18	STANDING   
    109.	18	LAYING   
    110.	19	WALKING   
    111.	19	WALKING_UPSTAIRS   
    112.	19	WALKING_DOWNSTAIRS   
    113.	19	SITTING   
    114.	19	STANDING   
    115.	19	LAYING   
    116.	20	WALKING   
    117.	20	WALKING_UPSTAIRS   
    118.	20	WALKING_DOWNSTAIRS   
    119.	20	SITTING   
    120.	20	STANDING   
    121.	20	LAYING   
    122.	21	WALKING   
    123.	21	WALKING_UPSTAIRS   
    124.	21	WALKING_DOWNSTAIRS   
    125.	21	SITTING   
    126.	21	STANDING   
    127.	21	LAYING   
    128.	22	WALKING   
    129.	22	WALKING_UPSTAIRS   
    130.	22	WALKING_DOWNSTAIRS   
    131.	22	SITTING   
    132.	22	STANDING   
    133.	22	LAYING   
    134.	23	WALKING   
    135.	23	WALKING_UPSTAIRS   
    136.	23	WALKING_DOWNSTAIRS   
    137.	23	SITTING   
    138.	23	STANDING   
    139.	23	LAYING  
    140.	24	WALKING   
    141.	24	WALKING_UPSTAIRS   
    142.	24	WALKING_DOWNSTAIRS   
    143.	24	SITTING   
    144.	24	STANDING   
    145.	24	LAYING   
    146.	25	WALKING   
    147.	25	WALKING_UPSTAIRS   
    148.	25	WALKING_DOWNSTAIRS  
    149.	25	SITTING   
    150.	25	STANDING   
    151.	25	LAYING  
    152.	26	WALKING  
    153.	26	WALKING_UPSTAIRS  
    154.	26	WALKING_DOWNSTAIRS  
    155.	26	SITTING   
    156.	26	STANDING   
    157.	26	LAYING  
    158.	27	WALKING  
    159.	27	WALKING_UPSTAIRS  
    160.	27	WALKING_DOWNSTAIRS  
    161.	27	SITTING  
    162.	27	STANDING  
    163.	27	LAYING  
    164.	28	WALKING  
    165.	28	WALKING_UPSTAIRS  
    166.	28	WALKING_DOWNSTAIRS  
    167.	28	SITTING  
    168.	28	STANDING  
    169.	28	LAYING  
    170.	29	WALKING  
    171.	29	WALKING_UPSTAIRS  
    172.	29	WALKING_DOWNSTAIRS  
    173.	29	SITTING  
    174.	29	STANDING  
    175.	29	LAYING  
    176.	30	WALKING   
    177.	30	WALKING_UPSTAIRS  
    178.	30	WALKING_DOWNSTAIRS  
    179.	30	SITTING  
    180.	30	STANDING  
    181.	30	LAYING  

Column Indices (By measurement specs and which Mean is being calculated) (Starting at 3):    
3.  TimeBodyAccelerometerMeansX  
4.	TimeBodyAccelerometerMeansY  
5.	TimeBodyAccelerometerMeansZ  
6.	TimeGravityAccelerometerMeansX  
7.	TimeGravityAccelerometerMeansY  
8.	TimeGravityAccelerometerMeansZ  
9.	TimeBodyAccelerometerJerkMeansX  
10.	TimeBodyAccelerometerJerkMeansY  
11.	TimeBodyAccelerometerJerkMeansZ  
12.	TimeBodyGyroscopeMeansX  
13.	TimeBodyGyroscopeMeansY  
14.	TimeBodyGyroscopeMeansZ  
15.	TimeBodyGyroscopeJerkMeansX  
16.	TimeBodyGyroscopeJerkMeansY  
17.	TimeBodyGyroscopeJerkMeansZ  
18.	TimeBodyAccelerometerMagnitudeMeans  
19.	TimeGravityAccelerometerMagnitudeMeans  
20.	TimeBodyAccelerometerJerkMagnitudeMeans  
21.	TimeBodyGyroscopeMagnitudeMeans  
22.	TimeBodyGyroscopeJerkMagnitudeMeans  
23.	FreqBodyAccelerometerMeansX  
24.	FreqBodyAccelerometerMeansY  
25.	FreqBodyAccelerometerMeansZ  
26.	FreqBodyAccelerometerJerkMeansX  
27.	FreqBodyAccelerometerJerkMeansY  
28.	FreqBodyAccelerometerJerkMeansZ  
29.	FreqBodyGyroscopeMeansX  
30.	FreqBodyGyroscopeMeansY    
31.	FreqBodyGyroscopeMeansZ  
32.	FreqBodyAccelerometerMagnitudeMeans  
33.	FreqBodyAccelerometerJerkMagnitudeMeans  
34.	FreqBodyGyroscopeMagnitudeMeans  
35.	FreqBodyGyroscopeJerkMagnitudeMeans  
36.	TimeBodyAccelerometerStandardDevMeanX  
37.	TimeBodyAccelerometerStandardDevMeanY  
38.	TimeBodyAccelerometerStandardDevMeanZ  
39.	TimeGravityAccelerometerStandardDevMeanX  
40.	TimeGravityAccelerometerStandardDevMeanY  
41.	TimeGravityAccelerometerStandardDevMeanZ  
42.	TimeBodyAccelerometerJerkStandardDevMeanX  
43.	TimeBodyAccelerometerJerkStandardDevMeanY  
44.	TimeBodyAccelerometerJerkStandardDevMeanZ  
45.	TimeBodyGyroscopeStandardDevMeanX  
46.	TimeBodyGyroscopeStandardDevMeanY  
47.	TimeBodyGyroscopeStandardDevMeanZ  
48.	TimeBodyGyroscopeJerkStandardDevMeanX  
49.	TimeBodyGyroscopeJerkStandardDevMeanY  
50.	TimeBodyGyroscopeJerkStandardDevMeanZ  
51.	TimeBodyAccelerometerMagnitudeStandardDevMean  
52.	TimeGravityAccelerometerMagnitudeStandardDevMean  
53.	TimeBodyAccelerometerJerkMagnitudeStandardDevMean  
54.	TimeBodyGyroscopeMagnitudeStandardDevMean  
55.	TimeBodyGyroscopeJerkMagnitudeStandardDevMean  
56.	FreqBodyAccelerometerStandardDevMeanX  
57.	FreqBodyAccelerometerStandardDevMeanY  
58.	FreqBodyAccelerometerStandardDevMeanZ  
59.	FreqBodyAccelerometerJerkStandardDevMeanX  
60.	FreqBodyAccelerometerJerkStandardDevMeanY  
61.	FreqBodyAccelerometerJerkStandardDevMeanZ  
62.	FreqBodyGyroscopeStandardDevMeanX  
63.	FreqBodyGyroscopeStandardDevMeanY  
64.	FreqBodyGyroscopeStandardDevMeanZ  
65.	FreqBodyAccelerometerMagnitudeStandardDevMean  
66.	FreqBodyAccelerometerJerkMagnitudeStandardDevMean  
67.	FreqBodyGyroscopeMagnitudeStandardDevMean  
68.	FreqBodyGyroscopeJerkMagnitudeStandardDevMean  




 

**Orginal Data Attribution**

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
