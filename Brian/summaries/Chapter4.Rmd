Chapter 4 Getting Started with File Management
===========================================

File management is a very important part of reproducibility. Using tools such as R, `knitr`, and markup languages like LaTeX requires detailed knowledge of where files are stored. This chapter discusses ways to effectively manage locally stored files.

**File Paths & Naming Conventions**

Almost all of the operating systems organize files in hierarchical directories, also known as file trees. A *root directory* is the first level in a disk, such as a hard drive. All other directories are subdirectories of the root directory.

On Windows computers separate subdirectories are indicated with a back slash (\\); for example, **C:\\Example\\Data**. It is important to note that when we type Windows file paths into R, we need to use two backslashes (\\ \\) rather than one because the \\ is an escape character in R. Alternatively, we can use one forward slash (/) to write Windows file names in R. 

It is generally good practice to avoid putting spaces in the file and directory names. Some computer programs may interpret space as the end of the file name. We can make multi-word names easily readable without using spaces by adopting a convention such as ChapterFour.

When using R, it is important to know what the current working directory is. The **working directory** is the directory where the program automaticallaly looks for files and other directories. A useful R command `getwd()` will tell you what current working directory is.

**Some Useful R Commands for File Manipulation**

`list.file()` will show all of the files and subdirectories in the current working directory.

`set.wd()` will set the current working directory.

`dir.create()` will create a new directory.

`file.create()` will create a new file.

`cat()` (concatenate and print) will create a new file and put text into it. For example, `cat("Chapter 4 Getting Started with File Management", file="ExampleCat.md")`. 

`unlink()` will delete specified files and directories.

`file.rename(from="Old Name", to="New name")` will rename a file or to move a file from one directory to another.


`file.copy(from="Old Name", to="New name")` will copy a file from one directory to another.

