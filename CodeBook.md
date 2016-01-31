---
title: CodeBook
author: Sergio Rogelio Tinoco-Martínez
date: 31 de enero de 2016
output: html_document
---

### Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerationXYZ and timeGyroscopeXYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerationXYZ and timeGravityAccelerationXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerationJerkXYZ and timeBodyGyroscopeJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerationMagnitude, timeGravityAccelerationMagnitude, timeBodyAccelerationJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude).

Finally a Fast Fourier Transform (FFT) was applied to some of these values producing frequency domain signals frequencyBodyAccelerationXYZ, frequencyBodyAccelerationJerkXYZ, frequencyBodyGyroscopeXYZ, frequencyBodyAccelerationJerkMagnitude, frequencyBodyGyroscopeMag, frequencyBodyGyroscopeJerkMagnitude.

These signals were used to estimate variables of the feature vector for each pattern: 'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation
mad: Median absolute deviation 
max: Largest value in array
min: Smallest value in array
sma: Signal magnitude area
energy: Energy measure. Sum of the squares divided by the number of values. 
iqr: Interquartile range 
entropy: Signal entropy
arCoeff: Autorregresion coefficients with Burg order equal to 4
correlation: correlation coefficient between two signals
maxInds: index of the frequency component with largest magnitude
meanFreq: Weighted average of the frequency components to obtain a mean frequency
skewness: skewness of the frequency domain signal 
kurtosis: kurtosis of the frequency domain signal 
bandsEnergy: Energy of a frequency interval within the 64 bins of the FFT of each window.
angle: Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle variable:

gravityMean
timeBodyAccelerationMean
timeBodyAccelerationJerkMean
timeBodyGyroscopeMean
timeBodyGyroscopeJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

### Updated feature list

Values of the original features were taken to average each variable for each activity and each subject, extracting first only the measurements corresponding to the mean and standard deviation, given the next features with same concept but averaged by subject and activity involved:

 1 subjectId
 2 activity
 3 timeBodyAccelerationmeanX
 4 timeBodyAccelerationmeanY
 5 timeBodyAccelerationmeanZ
 6 timeBodyAccelerationstandardDeviationX
 7 timeBodyAccelerationstandardDeviationY
 8 timeBodyAccelerationstandardDeviationZ
 9 timeGravityAccelerationmeanX
10 timeGravityAccelerationmeanY
11 timeGravityAccelerationmeanZ
12 timeGravityAccelerationstandardDeviationX
13 timeGravityAccelerationstandardDeviationY
14 timeGravityAccelerationstandardDeviationZ
15 timeBodyAccelerationJerkmeanX
16 timeBodyAccelerationJerkmeanY
17 timeBodyAccelerationJerkmeanZ
18 timeBodyAccelerationJerkstandardDeviationX
19 timeBodyAccelerationJerkstandardDeviationY
20 timeBodyAccelerationJerkstandardDeviationZ
21 timeBodyGyroscopemeanX
22 timeBodyGyroscopemeanY
23 timeBodyGyroscopemeanZ
24 timeBodyGyroscopestandardDeviationX
25 timeBodyGyroscopestandardDeviationY
26 timeBodyGyroscopestandardDeviationZ
27 timeBodyGyroscopeJerkmeanX
28 timeBodyGyroscopeJerkmeanY
29 timeBodyGyroscopeJerkmeanZ
30 timeBodyGyroscopeJerkstandardDeviationX
31 timeBodyGyroscopeJerkstandardDeviationY
32 timeBodyGyroscopeJerkstandardDeviationZ
33 timeBodyAccelerationMagnitudemean
34 timeBodyAccelerationMagnitudestandardDeviation
35 timeGravityAccelerationMagnitudemean
36 timeGravityAccelerationMagnitudestandardDeviation
37 timeBodyAccelerationJerkMagnitudemean
38 timeBodyAccelerationJerkMagnitudestandardDeviation
39 timeBodyGyroscopeMagnitudemean
40 timeBodyGyroscopeMagnitudestandardDeviation
41 timeBodyGyroscopeJerkMagnitudemean
42 timeBodyGyroscopeJerkMagnitudestandardDeviation
43 frequencyBodyAccelerationmeanX
44 frequencyBodyAccelerationmeanY
45 frequencyBodyAccelerationmeanZ
46 frequencyBodyAccelerationstandardDeviationX
47 frequencyBodyAccelerationstandardDeviationY
48 frequencyBodyAccelerationstandardDeviationZ
49 frequencyBodyAccelerationmeanFrequencyX
50 frequencyBodyAccelerationmeanFrequencyY
51 frequencyBodyAccelerationmeanFrequencyZ
52 frequencyBodyAccelerationJerkmeanX
53 frequencyBodyAccelerationJerkmeanY
54 frequencyBodyAccelerationJerkmeanZ
55 frequencyBodyAccelerationJerkstandardDeviationX
56 frequencyBodyAccelerationJerkstandardDeviationY
57 frequencyBodyAccelerationJerkstandardDeviationZ
58 frequencyBodyAccelerationJerkmeanFrequencyX
59 frequencyBodyAccelerationJerkmeanFrequencyY
60 frequencyBodyAccelerationJerkmeanFrequencyZ
61 frequencyBodyGyroscopemeanX
62 frequencyBodyGyroscopemeanY
63 frequencyBodyGyroscopemeanZ
64 frequencyBodyGyroscopestandardDeviationX
65 frequencyBodyGyroscopestandardDeviationY
66 frequencyBodyGyroscopestandardDeviationZ
67 frequencyBodyGyroscopemeanFrequencyX
68 frequencyBodyGyroscopemeanFrequencyY
69 frequencyBodyGyroscopemeanFrequencyZ
70 frequencyBodyAccelerationMagnitudemean
71 frequencyBodyAccelerationMagnitudestandardDeviation
72 frequencyBodyAccelerationMagnitudemeanFrequency
73 frequencyBodyBodyAccelerationJerkMagnitudemean
74 frequencyBodyBodyAccelerationJerkMagnitudestandardDeviation
75 frequencyBodyBodyAccelerationJerkMagnitudemeanFrequency
76 frequencyBodyBodyGyroscopeMagnitudemean
77 frequencyBodyBodyGyroscopeMagnitudestandardDeviation
78 frequencyBodyBodyGyroscopeMagnitudemeanFrequency
79 frequencyBodyBodyGyroscopeJerkMagnitudemean
80 frequencyBodyBodyGyroscopeJerkMagnitudestandardDeviation
81 frequencyBodyBodyGyroscopeJerkMagnitudemeanFrequency