Maureen 
========================================================

## Chapter 6

### What's it about?

#### Gathering Data With R.

1. Direct impact on the reproducibility of the research.
  * By importing directly from raw data, it will be easier to reproduce
2. Makefiles
  * Segementing files into modular thingys that Makefiles use
  * Runs source code
  * Used as a way to store raw data in one set
3. R Makefiles
  * Two commands
    * setwd
    * source
  * Merge the data into one Mergedata.R file
4. GNU Make
  * Appears to be more confusing
  * Terminology
    * Target
    * Prerequisite
      * If a target is newer than the prerequisite Make will not run the prerequisite
    * Recipe
  * Multiple lines of code to merge the data
  * Wildcard with the * different from the wildcard command
5. Make and RStudio
  * Much easier
  * Uses the build tab to Make the data
6. Importing Data
  * Non Internet Data
    * read.table allows you to import text files such as txt or csv
    * You can aslo import through the workspace tab
    * By using the foreign package you can import non text files 
  * Internet Data
    * Secure vs non secure (http vs https)
    * Also uses read. table
    * Source_data 
    * If data online is modified it will show up on R as an error thing
    * RCurl
      * Laborious....
    * Zip files
      * Unizip to see data then merge for make file
    * API and Feeds (application programming interfaces)
      * openair
      * quantmod
      * treebase
      * twitteR
      * WDI
      * Fancy packages that get data from various API's
    * Web Scraping
      * Involves downloading a file from the internet
      * Extract the data
      * Put it into a frame object
      * HTML
      * Regular expressions
      * Looping
  
  
  
  
