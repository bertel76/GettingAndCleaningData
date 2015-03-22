The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

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
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The following is a list of all the columns in the data, for those columns described above the description field is left empty

Column name				 Data type  description 
subject                  : int   	subject id
tbodyacc-mean-x          : num  
tbodyacc-mean-y          : num  
tbodyacc-mean-z          : num  
tbodyacc-std-x           : num  
tbodyacc-std-y           : num  
tbodyacc-std-z           : num  
tgravityacc-mean-x       : num  
tgravityacc-mean-y       : num  
tgravityacc-mean-z       : num  
tgravityacc-std-x        : num  
tgravityacc-std-y        : num  
tgravityacc-std-z        : num  
tbodyaccjerk-mean-x      : num  
tbodyaccjerk-mean-y      : num  
tbodyaccjerk-mean-z      : num  
tbodyaccjerk-std-x       : num  
tbodyaccjerk-std-y       : num  
tbodyaccjerk-std-z       : num  
tbodygyro-mean-x         : num  
tbodygyro-mean-y         : num  
tbodygyro-mean-z         : num  
tbodygyro-std-x          : num  
tbodygyro-std-y          : num  
tbodygyro-std-z          : num  
tbodygyrojerk-mean-x     : num  
tbodygyrojerk-mean-y     : num  
tbodygyrojerk-mean-z     : num  
tbodygyrojerk-std-x      : num  
tbodygyrojerk-std-y      : num  
tbodygyrojerk-std-z      : num  
tbodyaccmag-mean         : num  
tbodyaccmag-std          : num  
tgravityaccmag-mean      : num  
tgravityaccmag-std       : num  
tbodyaccjerkmag-mean     : num  
tbodyaccjerkmag-std      : num  
tbodygyromag-mean        : num  
tbodygyromag-std         : num  
tbodygyrojerkmag-mean    : num  
tbodygyrojerkmag-std     : num  
fbodyacc-mean-x          : num  
fbodyacc-mean-y          : num  
fbodyacc-mean-z          : num  
fbodyacc-std-x           : num  
fbodyacc-std-y           : num  
fbodyacc-std-z           : num  
fbodyaccjerk-mean-x      : num  
fbodyaccjerk-mean-y      : num  
fbodyaccjerk-mean-z      : num  
fbodyaccjerk-std-x       : num  
fbodyaccjerk-std-y       : num  
fbodyaccjerk-std-z       : num  
fbodygyro-mean-x         : num  
fbodygyro-mean-y         : num  
fbodygyro-mean-z         : num  
fbodygyro-std-x          : num  
fbodygyro-std-y          : num  
fbodygyro-std-z          : num  
fbodyaccmag-mean         : num  
fbodyaccmag-std          : num  
fbodybodyaccjerkmag-mean : num  
fbodybodyaccjerkmag-std  : num  
fbodybodygyromag-mean    : num  
fbodybodygyromag-std     : num  
fbodybodygyrojerkmag-mean: num  
fbodybodygyrojerkmag-std : num  
activity                 : chr    Name of the activity