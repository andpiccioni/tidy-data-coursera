Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were included in the analysis are: 

mean(): Mean value 
std(): Standard deviation 
meanFreq(): Weighted average of the frequency components to obtain a mean frequency 


The complete list of features is the following:
 [1] "acceleration.mean.X.axis"                                       
 [2] "acceleration.mean.Y.axis"                                       
 [3] "acceleration.mean.Z.axis"                                       
 [4] "gravity.acceleration.mean.X.axis"                               
 [5] "gravity.acceleration.mean.Y.axis"                               
 [6] "gravity.acceleration.mean.Z.axis"                               
 [7] "acceleration.jerk.mean.X.axis"                                  
 [8] "acceleration.jerk.mean.Y.axis"                                  
 [9] "acceleration.jerk.mean.Z.axis"                                  
[10] "gyroscopic.mean.X.axis"                                         
[11] "gyroscopic.mean.Y.axis"                                         
[12] "gyroscopic.mean.Z.axis"                                         
[13] "gyroscopic.jerk.mean.X.axis"                                    
[14] "gyroscopic.jerk.mean.Y.axis"                                    
[15] "gyroscopic.jerk.mean.Z.axis"                                    
[16] "acceleration.magnitude.mean"                                    
[17] "gravity.acceleration.magnitude.mean"                            
[18] "acceleration.jerk.magnitude.mean"                               
[19] "gyroscopic.magnitude.mean"                                      
[20] "gyroscopic.jerk.magnitude.mean"                                 
[21] "transformed.acceleration.mean.X.axis"                           
[22] "transformed.acceleration.mean.Y.axis"                           
[23] "transformed.acceleration.mean.Z.axis"                           
[24] "transformed.acceleration.weighted.average.X.axis"               
[25] "transformed.acceleration.weighted.average.Y.axis"               
[26] "transformed.acceleration.weighted.average.Z.axis"               
[27] "transformed.acceleration.jerk.mean.X.axis"                      
[28] "transformed.acceleration.jerk.mean.Y.axis"                      
[29] "transformed.acceleration.jerk.mean.Z.axis"                      
[30] "transformed.acceleration.jerk.weighted.average.X.axis"          
[31] "transformed.acceleration.jerk.weighted.average.Y.axis"          
[32] "transformed.acceleration.jerk.weighted.average.Z.axis"          
[33] "transformed.gyroscopic.mean.X.axis"                             
[34] "transformed.gyroscopic.mean.Y.axis"                             
[35] "transformed.gyroscopic.mean.Z.axis"                             
[36] "transformed.gyroscopic.weighted.average.X.axis"                 
[37] "transformed.gyroscopic.weighted.average.Y.axis"                 
[38] "transformed.gyroscopic.weighted.average.Z.axis"                 
[39] "transformed.acceleration.magnitude.mean"                        
[40] "transformed.acceleration.magnitude.weighted.average"            
[41] "transformed.body.acceleration.jerk.magnitude.mean"              
[42] "transformed.body.acceleration.jerk.magnitude.weighted.average"  
[43] "transformed.body.gyroscopic.magnitude.mean"                     
[44] "transformed.body.gyroscopic.magnitude.weighted.average"         
[45] "transformed.body.gyroscopic.jerk.magnitude.mean"                
[46] "transformed.body.gyroscopic.jerk.magnitude.weighted.average"    
[47] "acceleration.standard.deviation.X.axis"                         
[48] "acceleration.standard.deviation.Y.axis"                         
[49] "acceleration.standard.deviation.Z.axis"                         
[50] "gravity.acceleration.standard.deviation.X.axis"                 
[51] "gravity.acceleration.standard.deviation.Y.axis"                 
[52] "gravity.acceleration.standard.deviation.Z.axis"                 
[53] "acceleration.jerk.standard.deviation.X.axis"                    
[54] "acceleration.jerk.standard.deviation.Y.axis"                    
[55] "acceleration.jerk.standard.deviation.Z.axis"                    
[56] "gyroscopic.standard.deviation.X.axis"                           
[57] "gyroscopic.standard.deviation.Y.axis"                           
[58] "gyroscopic.standard.deviation.Z.axis"                           
[59] "gyroscopic.jerk.standard.deviation.X.axis"                      
[60] "gyroscopic.jerk.standard.deviation.Y.axis"                      
[61] "gyroscopic.jerk.standard.deviation.Z.axis"                      
[62] "acceleration.magnitude.standard.deviation"                      
[63] "gravity.acceleration.magnitude.standard.deviation"              
[64] "acceleration.jerk.magnitude.standard.deviation"                 
[65] "gyroscopic.magnitude.standard.deviation"                        
[66] "gyroscopic.jerk.magnitude.standard.deviation"                   
[67] "transformed.acceleration.standard.deviation.X.axis"             
[68] "transformed.acceleration.standard.deviation.Y.axis"             
[69] "transformed.acceleration.standard.deviation.Z.axis"             
[70] "transformed.acceleration.jerk.standard.deviation.X.axis"        
[71] "transformed.acceleration.jerk.standard.deviation.Y.axis"        
[72] "transformed.acceleration.jerk.standard.deviation.Z.axis"        
[73] "transformed.gyroscopic.standard.deviation.X.axis"               
[74] "transformed.gyroscopic.standard.deviation.Y.axis"               
[75] "transformed.gyroscopic.standard.deviation.Z.axis"               
[76] "transformed.acceleration.magnitude.standard.deviation"          
[77] "transformed.body.acceleration.jerk.magnitude.standard.deviation"
[78] "transformed.body.gyroscopic.magnitude.standard.deviation"       
[79] "transformed.body.gyroscopic.jerk.magnitude.standard.deviation"  
[80] "activity"                                                       
[81] "subject"                                                                    


Notes concerning the modification of the variables' names of the original dataset:

The 'features.txt' has been used to assign the column names to the dataset.
The 'train/y_train.txt' and 'test/y_test.txt' files were used to assign the activity codes to each observation.
The 'activity_labels.txt' file has been used to categorize each observation according to the 6 activities held by the participants during the experiment.
The 'train/subject_train.txt' file put the subjects' id's beside each observation.

Every variable referred to the accelerometer contains the word "acceleration" instead of "Acc" , as in the original dataset. 
Every variable referred to the gyoscope contains the word "gyroscopic" instead of "Gyro" , as in the original dataset. 
"Gyroscopic" has been chosen against other options - like: "velocity, angular velocity" or "ang. velocity" - to stay closer to the source.

"tBody" was cancelled from the variables' names because redundant, while the prefix "f" has become "Transformed", to indicate the 
Fast Fourier Transform (FFT) applied to some of the signals captured in the experiments. 

"mean ()" has become "mean" in the variable names
"std ()" has become "standard-deviation" in the variable names
"meanFreq" has become "weighted-average" in the variable names
