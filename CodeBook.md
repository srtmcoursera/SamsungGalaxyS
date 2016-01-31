---
title: CodeBook
author: Sergio Rogelio Tinoco-Martínez
date: 31 de enero de 2016
output: html_document
---

### Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAcceleration-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcceleration-XYZ and timeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerationJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerationMagnitude, timeGravityAccelerationMagnitude, timeBodyAccelerationJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude).

Finally a Fast Fourier Transform (FFT) was applied to some of these values producing frequency domain signals frequencyBodyAcceleration-XYZ, frequencyBodyAccelerationJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAccelerationJerkMagnitude, frequencyBodyGyroscopeMag, frequencyBodyGyroscopeJerkMagnitude.

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
timeBodyAccelerationMean
timeBodyAccelerationJerkMean
timeBodyGyroscopeMean
timeBodyGyroscopeJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

### Updated feature list

Values of the original features were taken to average each variable for each activity and each subject, extracting first only the measurements corresponding to the mean and standard deviation, given the next features with same concept but averaged by subject and activity involved:

 1 - subjectId
 2 - activity
 3 - timeBodyAcceleration-mean()-X
 4 - timeBodyAcceleration-mean()-Y
 5 - timeBodyAcceleration-mean()-Z
 6 - timeBodyAcceleration-standardDeviation()-X
 7 - timeBodyAcceleration-standardDeviation()-Y
 8 - timeBodyAcceleration-standardDeviation()-Z
 9 - timeGravityAcceleration-mean()-X
10 - timeGravityAcceleration-mean()-Y
11 - timeGravityAcceleration-mean()-Z
12 - timeGravityAcceleration-standardDeviation()-X
13 - timeGravityAcceleration-standardDeviation()-Y
14 - timeGravityAcceleration-standardDeviation()-Z
15 - timeBodyAccelerationJerk-mean()-X
16 - timeBodyAccelerationJerk-mean()-Y
17 - timeBodyAccelerationJerk-mean()-Z
18 - timeBodyAccelerationJerk-standardDeviation()-X
19 - timeBodyAccelerationJerk-standardDeviation()-Y
20 - timeBodyAccelerationJerk-standardDeviation()-Z
21 - timeBodyGyroscope-mean()-X
22 - timeBodyGyroscope-mean()-Y
23 - timeBodyGyroscope-mean()-Z
24 - timeBodyGyroscope-standardDeviation()-X
25 - timeBodyGyroscope-standardDeviation()-Y
26 - timeBodyGyroscope-standardDeviation()-Z
27 - timeBodyGyroscopeJerk-mean()-X
28 - timeBodyGyroscopeJerk-mean()-Y
29 - timeBodyGyroscopeJerk-mean()-Z
30 - timeBodyGyroscopeJerk-standardDeviation()-X
31 - timeBodyGyroscopeJerk-standardDeviation()-Y
32 - timeBodyGyroscopeJerk-standardDeviation()-Z
33 - timeBodyAccelerationMagnitude-mean()
34 - timeBodyAccelerationMagnitude-standardDeviation()
35 - timeGravityAccelerationMagnitude-mean()
36 - timeGravityAccelerationMagnitude-standardDeviation()
37 - timeBodyAccelerationJerkMagnitude-mean()
38 - timeBodyAccelerationJerkMagnitude-standardDeviation()
39 - timeBodyGyroscopeMagnitude-mean()
40 - timeBodyGyroscopeMagnitude-standardDeviation()
41 - timeBodyGyroscopeJerkMagnitude-mean()
42 - timeBodyGyroscopeJerkMagnitude-standardDeviation()
43 - frequencyBodyAcceleration-mean()-X
44 - frequencyBodyAcceleration-mean()-Y
45 - frequencyBodyAcceleration-mean()-Z
46 - frequencyBodyAcceleration-standardDeviation()-X
47 - frequencyBodyAcceleration-standardDeviation()-Y
48 - frequencyBodyAcceleration-standardDeviation()-Z
49 - frequencyBodyAcceleration-meanFrequency()-X
50 - frequencyBodyAcceleration-meanFrequency()-Y
51 - frequencyBodyAcceleration-meanFrequency()-Z
52 - frequencyBodyAccelerationJerk-mean()-X
53 - frequencyBodyAccelerationJerk-mean()-Y
54 - frequencyBodyAccelerationJerk-mean()-Z
55 - frequencyBodyAccelerationJerk-standardDeviation()-X
56 - frequencyBodyAccelerationJerk-standardDeviation()-Y
57 - frequencyBodyAccelerationJerk-standardDeviation()-Z
58 - frequencyBodyAccelerationJerk-meanFrequency()-X
59 - frequencyBodyAccelerationJerk-meanFrequency()-Y
60 - frequencyBodyAccelerationJerk-meanFrequency()-Z
61 - frequencyBodyGyroscope-mean()-X
62 - frequencyBodyGyroscope-mean()-Y
63 - frequencyBodyGyroscope-mean()-Z
64 - frequencyBodyGyroscope-standardDeviation()-X
65 - frequencyBodyGyroscope-standardDeviation()-Y
66 - frequencyBodyGyroscope-standardDeviation()-Z
67 - frequencyBodyGyroscope-meanFrequency()-X
68 - frequencyBodyGyroscope-meanFrequency()-Y
69 - frequencyBodyGyroscope-meanFrequency()-Z
70 - frequencyBodyAccelerationMagnitude-mean()
71 - frequencyBodyAccelerationMagnitude-standardDeviation()
72 - frequencyBodyAccelerationMagnitude-meanFrequency()
73 - frequencyBodyBodyAccelerationJerkMagnitude-mean()
74 - frequencyBodyBodyAccelerationJerkMagnitude-standardDeviation()
75 - frequencyBodyBodyAccelerationJerkMagnitude-meanFrequency()
76 - frequencyBodyBodyGyroscopeMagnitude-mean()
77 - frequencyBodyBodyGyroscopeMagnitude-standardDeviation()
78 - frequencyBodyBodyGyroscopeMagnitude-meanFrequency()
79 - frequencyBodyBodyGyroscopeJerkMagnitude-mean()
80 - frequencyBodyBodyGyroscopeJerkMagnitude-standardDeviation()
81 - frequencyBodyBodyGyroscopeJerkMagnitude-meanFrequency()