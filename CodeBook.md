Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
Every variable referred to the accelerometer contains the word "Acceleration" instead of "Acc" , as in the original dataset. 
Every variable referred to the gyoscope contains the word "Gyroscopic" instead of "Gyro" , as in the original dataset. 
"Gyroscopic" has been chosen against other options - like: "velocity, angular.velocity" or "ang.velocity" - to stay close to the source.

"tBody" was cancelled from the variables' names because redundant, while the prefix "f" has become "Transformed", to indicate the 
Fast Fourier Transform (FFT) applied to some of the signals captured in the experiments. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were included in the analysis are: 

mean(): Mean value - "mean ()" has become "mean" in the variable names
std(): Standard deviation "std ()" has become "std" in the variable names
meanFreq(): Weighted average of the frequency components to obtain a mean frequency - "meanFreq" has become "weighted.average" in the variable names

The 'features.txt' has been used to assign the column names to the dataset.
The 'train/y_train.txt' and 'test/y_test.txt' files were used to assign the activity codes to each observation.
The 'activity_labels.txt' file has been used to categorize each observation according to the 6 activities held by the participants during the experiment.
The 'train/subject_train.txt' file put the subjects' id's beside each observation.

The complete list of features is the following:
 [1] ".Acceleration.mean.X_axis"                                     
 [2] ".Acceleration.mean.Y_axis"                                     
 [3] ".Acceleration.mean.Z_axis"                                     
 [4] "Gravity.Acceleration.mean.X_axis"                              
 [5] "Gravity.Acceleration.mean.Y_axis"                              
 [6] "Gravity.Acceleration.mean.Z_axis"                              
 [7] ".Acceleration.Jerk.mean.X_axis"                                
 [8] ".Acceleration.Jerk.mean.Y_axis"                                
 [9] ".Acceleration.Jerk.mean.Z_axis"                                
[10] ".Gyroscopic.mean.X_axis"                                       
[11] ".Gyroscopic.mean.Y_axis"                                       
[12] ".Gyroscopic.mean.Z_axis"                                       
[13] ".Gyroscopic.Jerk.mean.X_axis"                                  
[14] ".Gyroscopic.Jerk.mean.Y_axis"                                  
[15] ".Gyroscopic.Jerk.mean.Z_axis"                                  
[16] ".Acceleration.Magnitude.mean.."                                
[17] "Gravity.Acceleration.Magnitude.mean.."                         
[18] ".Acceleration.Jerk.Magnitude.mean.."                           
[19] ".Gyroscopic.Magnitude.mean.."                                  
[20] ".Gyroscopic.Jerk.Magnitude.mean.."                             
[21] "Transformed.Acceleration.mean.X_axis"                          
[22] "Transformed.Acceleration.mean.Y_axis"                          
[23] "Transformed.Acceleration.mean.Z_axis"                          
[24] "Transformed.Acceleration.weighted.average.X_axis"              
[25] "Transformed.Acceleration.weighted.average.Y_axis"              
[26] "Transformed.Acceleration.weighted.average.Z_axis"              
[27] "Transformed.Acceleration.Jerk.mean.X_axis"                     
[28] "Transformed.Acceleration.Jerk.mean.Y_axis"                     
[29] "Transformed.Acceleration.Jerk.mean.Z_axis"                     
[30] "Transformed.Acceleration.Jerk.weighted.average.X_axis"         
[31] "Transformed.Acceleration.Jerk.weighted.average.Y_axis"         
[32] "Transformed.Acceleration.Jerk.weighted.average.Z_axis"         
[33] "Transformed.Gyroscopic.mean.X_axis"                            
[34] "Transformed.Gyroscopic.mean.Y_axis"                            
[35] "Transformed.Gyroscopic.mean.Z_axis"                            
[36] "Transformed.Gyroscopic.weighted.average.X_axis"                
[37] "Transformed.Gyroscopic.weighted.average.Y_axis"                
[38] "Transformed.Gyroscopic.weighted.average.Z_axis"                
[39] "Transformed.Acceleration.Magnitude.mean.."                     
[40] "Transformed.Acceleration.Magnitude.weighted.average.."         
[41] "TransformedBody.Acceleration.Jerk.Magnitude.mean.."            
[42] "TransformedBody.Acceleration.Jerk.Magnitude.weighted.average.."
[43] "TransformedBody.Gyroscopic.Magnitude.mean.."                   
[44] "TransformedBody.Gyroscopic.Magnitude.weighted.average.."       
[45] "TransformedBody.Gyroscopic.Jerk.Magnitude.mean.."              
[46] "TransformedBody.Gyroscopic.Jerk.Magnitude.weighted.average.."  
[47] ".Acceleration.std.X_axis"                                      
[48] ".Acceleration.std.Y_axis"                                      
[49] ".Acceleration.std.Z_axis"                                      
[50] "Gravity.Acceleration.std.X_axis"                               
[51] "Gravity.Acceleration.std.Y_axis"                               
[52] "Gravity.Acceleration.std.Z_axis"                               
[53] ".Acceleration.Jerk.std.X_axis"                                 
[54] ".Acceleration.Jerk.std.Y_axis"                                 
[55] ".Acceleration.Jerk.std.Z_axis"                                 
[56] ".Gyroscopic.std.X_axis"                                        
[57] ".Gyroscopic.std.Y_axis"                                        
[58] ".Gyroscopic.std.Z_axis"                                        
[59] ".Gyroscopic.Jerk.std.X_axis"                                   
[60] ".Gyroscopic.Jerk.std.Y_axis"                                   
[61] ".Gyroscopic.Jerk.std.Z_axis"                                   
[62] ".Acceleration.Magnitude.std.."                                 
[63] "Gravity.Acceleration.Magnitude.std.."                          
[64] ".Acceleration.Jerk.Magnitude.std.."                            
[65] ".Gyroscopic.Magnitude.std.."                                   
[66] ".Gyroscopic.Jerk.Magnitude.std.."                              
[67] "Transformed.Acceleration.std.X_axis"                           
[68] "Transformed.Acceleration.std.Y_axis"                           
[69] "Transformed.Acceleration.std.Z_axis"                           
[70] "Transformed.Acceleration.Jerk.std.X_axis"                      
[71] "Transformed.Acceleration.Jerk.std.Y_axis"                      
[72] "Transformed.Acceleration.Jerk.std.Z_axis"                      
[73] "Transformed.Gyroscopic.std.X_axis"                             
[74] "Transformed.Gyroscopic.std.Y_axis"                             
[75] "Transformed.Gyroscopic.std.Z_axis"                             
[76] "Transformed.Acceleration.Magnitude.std.."                      
[77] "TransformedBody.Acceleration.Jerk.Magnitude.std.."             
[78] "TransformedBody.Gyroscopic.Magnitude.std.."                    
[79] "TransformedBody.Gyroscopic.Jerk.Magnitude.std.."         