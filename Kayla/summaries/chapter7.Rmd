Kayla Janos 
**Chapter 7: Preparing Data for Analysis**
========================================================
**Cleaning Data for Merging**
- If you want to be able to merge two or more data sets, they must be in the same format
- There are some commands in R that help you to look at just a few things in a data set
  - names: Variable names in data frame objecct
  - head: shows names plus first few obs 
  - tail: shows names and last few obs 
  - dim: shows the number of observations and names
     - First number is number of rows, second number is number of observations
  - nrow: number of rows
  - ncol: number of columns 
  - summary: gives basic discriptive stats for all variables in the data frame 
      - Yo can use the ($) indicator to choose a specific variable 
  - table: creates a contingency table with counts of the number of observations per combination of factor variables
- R assumes that data is in a long format
  - Columns are variables
  - Rows are observations
- If one of the raw data sets are in a different format, you must reshape it so it matches the others 
- Reshaping data often causes a lot of confusion and fustration
- Wide data sets are similar to categorial sets 
- There are commands that help make reshaping easier
  - (t)^1: matrix transpose 
  - reshape
- _reshape2_ is a package that will be discussed here 
  - melt: wide to long 
      - Id variables can be excluded by the id.vars argument 
      - Melted objects are reffered to as molten data in reshape 2 documentation 
- Renaming variables 
  - There is commands in R that will help to rename variables if needed
- Ordering Data 
  - Well ordered data is easier to read 
  - order command will work in R 
- Subsetting data 
  - subset command 
      - can be used to examine only a few obs 
      - can be used to drop outliers 
      - can be used to filter out words we dont want 
      - can be used to remove missing values 
- Recording string/numeric variables 
  - In order to merge R needs to have identical identification values 
  - Like in MySQL everything has to be exact to merge correctly 
  - **Ex:**   
  MoltenFertSub$country[MoltenFertSub$country == "Korea, Rep."] <- "South Korea" 
      - This changed every obs that was "Korea, Rep." to "South Korea"
- New Variables from Old 
  - **Ex:**  
MoltenFertSub$logFertConsumption <- log( MoltenFertSub$FertilizerConsumption )
       - Made a new variable that is the log of the old one
- Creating Factor Variables 
  - factor command can convert groups into a variable with the labels that we want 
       - First you have to create a vector with label titles you want
       - Then use the factor commands labels argument to apply them 
  - cut command does the same thing but easier 
       - Must tell it where the breaks are, and the names of the labels   
  
**Merging Data Sets**
- Binding 
  - cbind: can be used if data sets are in the same order-rows 
       - Not a good idea, because most of the time things do not line up correctly 
  - rbind: adds rows together
       - Good for when your columns are the exact same and you want to add onto 
- Merge command: arguments explained below
  - x & y: names of data frames you want to merge 
  - by: specifies which variable in the two frames to identify obs to match
  - all = TRUE: means keep all obs 
        - False will not include obs that are unique to just one data set 
- Duplicate Values 
  - duplicated: will look check for duplicates 
  - You can use similar methods from earlier in the chapter to remove duplicates 
  - **Ex**  
  DataNotDuplicates <- MergedData2[!duplicated( MergedData2[, 1:2]), ]
  - Removes the duplicates that were in the merged data object 
- Duplicate columns 
  - You can remove duplicate columns if the need arises 
