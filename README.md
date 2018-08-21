# actigraphy-profiles
A visualization tool for displaying minute-level actigrpahy profiles

This shiny app provides a visualization tool for minute level actigrpahy profiles.

You will need at least one csv file for the activity data. This data has two have 1442 columns where the first two columns (with names "ID" and "Date") are the id and date for a specific subject-day. Each row represents one subject day.

You can addtionally upload another csv file (same dimension as the previous one) for a flag data, where each entry reprents a binary flag 0/1 (sleep/wake, non-wear/wear, etc.)

The R script run_visual.R provides detail example of how to run the app.

Example data files are from NHANES.


