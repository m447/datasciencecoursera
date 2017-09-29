# Codebook
This codebook describes the variables of tidy data set with the average of each variable for each activity and each subject.


## Description of steps performed on data stored in README.md file.

dimensions if tidy file
181 observations of 68 variables

head(average[1:6])

subject           activity timeBodyAccMean-X    timeBodyAccMean-Y   timeBodyAccMean-Z   timeBodyAccStd-X
       1            WALKING 0.277330758736842  -0.0173838185273684  -0.111148103547368 -0.283740258842105
       1   WALKING_UPSTAIRS 0.255461689622641  -0.0239531492643396 -0.0973020020943396  -0.35470802509434
       1 WALKING_DOWNSTAIRS 0.289188320408163 -0.00991850461020408  -0.107566190908163 0.0300353383483878
       1            SITTING 0.261237565425532 -0.00130828765170213  -0.104544182255319 -0.977229008297872
       1           STANDING 0.278917629056604  -0.0161375901037736  -0.110601817735849 -0.995759901509434
       

list of variables                |       description
_________________________________|_________________________________________________        
1  subject                       |       Label of activity, Factor w/ 6 levels
2  activity                      |       ID of subject, int (1-30)
3  timeBodyAccMean-X             |       the average value, num (range: -1:1)
4  timeBodyAccMean-Y             |       same as above for variable 1 - 68
5  timeBodyAccMean-Z             |       
6  timeBodyAccStd-X              |       
7  timeBodyAccStd-Y              |     
8  timeBodyAccStd-Z              |      
9  timeGravityAccMean-X          |     
10 timeGravityAccMean-Y          |       
11 timeGravityAccMean-Z          |       
12 timeGravityAccStd-X           |      
13 timeGravityAccStd-Y           |       
14 timeGravityAccStd-Z           |       
15 timeBodyAccJerkMean-X         |       
16 timeBodyAccJerkMean-Y         |
17 timeBodyAccJerkMean-Z         |
18 timeBodyAccJerkStd-X          |
19 timeBodyAccJerkStd-Y          | 
20 timeBodyAccJerkStd-Z          | 
21 timeBodyGyroMean-X            | 
22 timeBodyGyroMean-Y            | 
23 timeBodyGyroMean-Z            | 
24 timeBodyGyroStd-X             |
25 timeBodyGyroStd-Y             | 
26 timeBodyGyroStd-Z             | 
27 timeBodyGyroJerkMean-X        |
28 timeBodyGyroJerkMean-Y        | 
29 timeBodyGyroJerkMean-Z        |
30 timeBodyGyroJerkStd-X         |
31 timeBodyGyroJerkStd-Y         | 
32 timeBodyGyroJerkStd-Z         |
33 timeBodyAccMagMean            |
34 timeBodyAccMagStd             |
35 timeGravityAccMagMean         |
36 timeGravityAccMagStd          |
37 timeBodyAccJerkMagMean        |
38 timeBodyAccJerkMagStd         |
39 timeBodyGyroMagMean           |
40 timeBodyGyroMagStd            |
41 timeBodyGyroJerkMagMean       |
42 timeBodyGyroJerkMagStd        |
43 frequenceBodyAccMean-X        |
44 frequenceBodyAccMean-Y        |
45 frequenceBodyAccMean-Z        |
46 frequenceBodyAccStd-X         |
47 frequenceBodyAccStd-Y         |
48 frequenceBodyAccStd-Z         |
49 frequenceBodyAccJerkMean-X    |
50 frequenceBodyAccJerkMean-Y    |
51 frequenceBodyAccJerkMean-Z    |
52 frequenceBodyAccJerkStd-X     |
53 frequenceBodyAccJerkStd-Y     |
54 frequenceBodyAccJerkStd-Z     |
55 frequenceBodyGyroMean-X       |
56 frequenceBodyGyroMean-Y       |
57 frequenceBodyGyroMean-Z       |
58 frequenceBodyGyroStd-X        |
59 frequenceBodyGyroStd-Y        |
60 frequenceBodyGyroStd-Z        |
61 frequenceBodyAccMagMean       |
62 frequenceBodyAccMagStd        |
63 frequenceBodyBodyAccJerkMagMea|       
64 frequenceBodyBodyAccJerkMagStd| 
65 frequenceBodyBodyGyroMagMean  |
66 frequenceBodyBodyGyroMagStd   |
67 frequenceBodyBodyGyroJerkMagMe| 
68 frequenceBodyBodyGyroJerkMagSt|
