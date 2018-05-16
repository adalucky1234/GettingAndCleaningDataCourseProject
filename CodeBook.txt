Human Activity Recognition Using Smartphones Data Set (mean and standard deviation only)


Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.


Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.



Attribute Information:
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration(mean and standard deviation only).  
- Triaxial Angular velocity from the gyroscope(mean and standard deviation only). 
- A 81-feature vector with the average of each variable for each activity and each subject(180 groups totally). 
- An identifier of the subject who carried out the experiment(the 1st column).
- Its activity label(the 2nd column). 

The variable names are as follows:

[1] "subjectname"                      "activityname"                     "timebodyacc.mean.x"              
 [4] "timebodyacc.mean.y"               "timebodyacc.mean.z"               "timegravityacc.mean.x"           
 [7] "timegravityacc.mean.y"            "timegravityacc.mean.z"            "timebodyaccjerk.mean.x"          
[10] "timebodyaccjerk.mean.y"           "timebodyaccjerk.mean.z"           "timebodygyro.mean.x"             
[13] "timebodygyro.mean.y"              "timebodygyro.mean.z"              "timebodygyrojerk.mean.x"         
[16] "timebodygyrojerk.mean.y"          "timebodygyrojerk.mean.z"          "timebodyaccmag.mean"             
[19] "timegravityaccmag.mean"           "timebodyaccjerkmag.mean"          "timebodygyromag.mean"            
[22] "timebodygyrojerkmag.mean"         "freqbodyacc.mean.x"               "freqbodyacc.mean.y"              
[25] "freqbodyacc.mean.z"               "freqbodyacc.meanfreq.x"           "freqbodyacc.meanfreq.y"          
[28] "freqbodyacc.meanfreq.z"           "freqbodyaccjerk.mean.x"           "freqbodyaccjerk.mean.y"          
[31] "freqbodyaccjerk.mean.z"           "freqbodyaccjerk.meanfreq.x"       "freqbodyaccjerk.meanfreq.y"      
[34] "freqbodyaccjerk.meanfreq.z"       "freqbodygyro.mean.x"              "freqbodygyro.mean.y"             
[37] "freqbodygyro.mean.z"              "freqbodygyro.meanfreq.x"          "freqbodygyro.meanfreq.y"         
[40] "freqbodygyro.meanfreq.z"          "freqbodyaccmag.mean"              "freqbodyaccmag.meanfreq"         
[43] "freqbodybodyaccjerkmag.mean"      "freqbodybodyaccjerkmag.meanfreq"  "freqbodybodygyromag.mean"        
[46] "freqbodybodygyromag.meanfreq"     "freqbodybodygyrojerkmag.mean"     "freqbodybodygyrojerkmag.meanfreq"
[49] "timebodyacc.std.x"                "timebodyacc.std.y"                "timebodyacc.std.z"               
[52] "timegravityacc.std.x"             "timegravityacc.std.y"             "timegravityacc.std.z"            
[55] "timebodyaccjerk.std.x"            "timebodyaccjerk.std.y"            "timebodyaccjerk.std.z"           
[58] "timebodygyro.std.x"               "timebodygyro.std.y"               "timebodygyro.std.z"              
[61] "timebodygyrojerk.std.x"           "timebodygyrojerk.std.y"           "timebodygyrojerk.std.z"          
[64] "timebodyaccmag.std"               "timegravityaccmag.std"            "timebodyaccjerkmag.std"          
[67] "timebodygyromag.std"              "timebodygyrojerkmag.std"          "freqbodyacc.std.x"               
[70] "freqbodyacc.std.y"                "freqbodyacc.std.z"                "freqbodyaccjerk.std.x"           
[73] "freqbodyaccjerk.std.y"            "freqbodyaccjerk.std.z"            "freqbodygyro.std.x"              
[76] "freqbodygyro.std.y"               "freqbodygyro.std.z"               "freqbodyaccmag.std"              
[79] "freqbodybodyaccjerkmag.std"       "freqbodybodygyromag.std"          "freqbodybodygyrojerkmag.std" 
