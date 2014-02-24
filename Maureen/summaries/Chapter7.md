Maureen
========================================================

## Chapter 7

### Preparing Data for Analysis

1. Cleaning up data before analysis can be done
  A. Transforming data
    * Need to convert objects into data frames 
    * Data can be in a long or wide format
      * Long - data frame columns are variables and rows are specific observations
      * Wide - one of the columns is widened to cover multiple columns
    * reshape command 
    * melt command ('combining' variables)
    * Renaming data so that all variable names match
    * order command 
    * subset command (drop things, look at outliers)
    * Removing na values is.na
    * Using the log command will transform the data
    * factor command
    * Changing variable types as.
  B. Recoding the data
  C. Commands to view the data
    * names (allows you to see variable names)
    * head (shows the first 6 rows of data)
    * tail (shows the last rows of data)
    * dim (shows the number of observations and variables)
    * summary (shows basic statistics for all the data)
    * table (creates a contingency table)
  D. Merging Data
    * cbind or rbind
    * merge command 
    * Merges data frames together to form one data frame
    * Merging data can result in duplicated data values
