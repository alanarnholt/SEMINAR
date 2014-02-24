Kayla Janos 
**_Chapter 4: Getting started with file management_**
========================================================
- File management is an crucial part of reproducible research 
- The two key things you want to do are:
  - Explicitly tie your files together
  - Have a plan of how you want to organize your information
- The best information that independent researchers get, comes from your files and the information they can access from it 
- If your files are better organized then its easier for you to go back and make changes to the work you have already done  

**4.1: File Paths and Naming Conventions**
- Every operating system in this book uses file trees to organize files in a hierarchical way
- Root Directories 
  - A root is the first level in a disk
  - The root is where the file tree grows from 
  - All other directories are subdirectories of their root directory
  - Windows computers can have multiple directories 
    - The root directory is given a drive letter assignment 
  - Windows most of the time uses the C:\ directory 
- Subdirectories and parent directories 
  - Directories inside of other directories are also called child directories of the parent directory 
  - Windows computers indicate subdirectories with a back slash \ 
    - You need two backslashes when you type windows file paths into r (\\)
  - For Unix-like systems, directories are indicated with a forward slash (/)
  - The book uses mostly Unix-like file paths 
- Spaces in directory and file names 
  - You do not want to include spaces in your file names 
  - Spaces on occasion create problems for computer programs when trying to read the file path
  - CamelBack is a good way to save files
    - In CamelBack new words are indicated by captial letters 
- Working directories 
  - You want to keep in mind when using programs like R what the working directory is 
    - Working directories are where the program automatically searches for files and other directories  
    
**4.2: Organizing Your Reserach Project**
- The example given on page 58 shows an example of a research project 
  - The main directory is called _Example Project_ 
  - There is three subdirectories from there 
    - Data gathering directory
    - Analysis directory
    - Presentation directory
  - From there each of those contain their own subdirectories that help to organize the project even further 
  - There also includes README.md files which give an overview of all the files in the project 
    - These files should include a brief summary of the things included in the project  

**4.3: Setting Directories as RStudio Projects**
- If you are using RStudio it is a smart idea to organize your files as projects 
- It is fairly simple to turn a normal directory into a RStudio project
  - You click on file, then go to new project. From there you can select the option Existing directory, then find your directory and select create project 
- RStudio Projects are useful for numbers of reasons 
  - It is listed in the Project menu so it is easily accessible 
  - When you open a project in R studio, it automatically sets everything up the way you need it to be 
  - You can easily set specific project options 
  - When you close the project everything is automatically save 
  - Helps to control versions  
  
**4.4: R file manipulation commands**
- There is a lot of different commands avaliable in R to handle navigating through files 
- :getwd:
