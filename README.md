# actigraphy-profiles

This shiny app provides a visualization tool for displaying minute level actigrpahy profiles. It serves as the initial data exploration. 

You will need at least one csv file for the activity data. This data has to have 1442 columns where the first two columns (with names "ID" and "Date") are the id and date for a specific subject-day. Each row represents activitiy profile for one subject day.

You can addtionally upload another csv file (same dimension as the previous one) for a flag, matrix, where each entry reprents a binary flag 0/1 (sleep/wake, non-wear/wear, etc.)

The R script run_visual.R provides a detailed example of how to run the app. To study it, simply download the repo and run the run_visual.R file.

Example data files are random samples from NHANES.




