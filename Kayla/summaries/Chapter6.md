Kayla Janos
**Chapter 6: Gathering Data with R**
========================================================
- How you gather your data have a direct effect on how reproducible your research will be 
- It is a good idea to have all the data gathering steps tied together by source code    
*6.1 Organize Your Data Gathering:Makefiles*
- Organizing the data gathering process from the start, will improve the possibility of reproducible
- Segmenting the process into modular files that can all be run by a common "make file" is a key part of gathering reproducible data
- Segmenting your data gathering into modular files and tying them together with make files 
- There are two types of source code files that the make file runs 
  - Data gathering/clean up 
  - Merging 
- This chapter focuses on ways to bring data into R 
- R Make-Like Files 
  - You normally only need two commands, setwd and source
  - _MergeData.R_ merges data frames and saves the output data 
- GNU Make 
  - Compares the output files time stamps to time stamps of the files that created them 
  - Will skip running files if the sources time stamp is older than its output 
  - Output files are called targets 
  - The files that create them are called prerequisites
  - You specify a recipe to create your targets from the prerequisites 
  - tabs are important in Make. 
     - They indicate what lines are the recipe 
  - If a target is newer than a prereq make does not run the prereq
  - First you must create a _Makefile_ 
  - The makefile runs prereqs in alphanumeric order, so make sure to save the files in the order that we want to run them 
  - (RDIR = . ) creates simple variable 
  - (RSOURCE:= $(wildcard $(RDIR)/*.R)) Creates a variable containing a list of all the names with the extension .R 
  - $ followed by a variable name susbtistues the value of the variable in place of the name 
  - $< indicates the first prereq
  - To run the makefile for the first time, all you have to do is change the working directory to where the file is and take make into the shell
  - make: nothing to be done for 'all' will pop up if you run it without changing and source files 
  - to remove them use make clean 
-Makefiles and RStudio Projects 
  - You can run makefiles from Rstudio, in the build tab
  - If a project already contains a makefile, Rstudio will automatically open a build tab
- Other information about makefiles 
  - Make relies heavily on the type of shell you are using 
  - The code listed so far is for a mac  
  
**6.2: Importing Locally Stored Data Sets**
- Local files aka files stored on  your computer are the easiest place to load data from 
- read.table can help load data stored in plain-text files on your computer 
- RStudio has dropdown menus that will open a plain text file 
  - This is much less producible 
- The _foreign_ package can help pull in data from other statistical programs 
  - Use the read.dta command with the library package for this 
- When moving things from places like excel it is best to clean up the data and save it in a plain text format
  - Make sure to remove extraneuous things like comments and colors  
  
**6.3: Importing data sets from the internet**
- Data stored online in simple format, and not embedded in a larger HTML website is straight forward, just use the URL as the files name in  your read.table command 
- Data from secure (https) URLs 
- source_data
  - As long as the data is in plain text and not embedded to a larger HTML the source_data command in R can be used for secure URLs 
  - the SHA-1 tag can help to make sure users are downloading the same data, incase the data has been altered since the original project 
- source_DropboxData
  - Files stored on nonpublic folders are tricker to download
  - The share link brings you to a website where the plain text file is embedded in a larger HTML webpage
  - The _repmis_ package includes a source_DropboxData command for downloading data from dropbox for this reason
  - It is similar to the source_data command but instead of the url, you will uses the files name, and its dropbox key
   - When you click on the Share Link button in dropbox, the URL that appears will be helpful.
   - The very last section will be the data files name
   - The section right before that will be the key
- _RCurl_ 
- getURL in the RCurl package is a way to get data without the _repmis_ package 
- These have to be plain text, and not stored in a larger HTML to work also
- There is a section in the book that shows the code 
- Compressed Data stored online
  - Create a temp file and store to the zipped file 
  - download the fil with download.file
  - Decompress the file with the connection commands in base R
  - Read the file with read.table 
  - You have to go through more steps with compressed data because they are more than just a single file
- Data APIs and feeds 
  - Application programming interfaces can gather data directly from a variety of internet sources 
  - Makes things alot easier 
  - _openair_ package, analyzing air quality data 
  - _quantmod_ package, access to google finance, yahoo finance, and the Federal reserve nomic data base 
  - _treebase_ phylogentic data from TreeBASE
  - _twitteR_ package, accesses twitters API
  - _WDI_ package, World Bank's Development Indicators database
  - library(package name) will download the library
  - You can then search the library for data information you want 
  - Then you can use the indicator to save things  

**6.4: Advanced automatic data gathering: Web Scrapping**
- General Process
  - Simple web scraping invovles downloading a file from the internet 
  - _XML_ package has tools to do this
  - _rjson_ and _RJSONIO_ packages are helpful too
  - To become a good scraper it is recommend that you know HTML language 
    

  

