Chapter 6 Gathering Data with R
===========================================

Data gathering is probably the most time-consuming and sometimes messy part of a research. For this reason, it is extremely crucial for researchers to record, to organize and to store their data such a way that can be retracable and reproducible.  

Organize Data Gathering: Makefiles
---
Organizing data gathering process from the beginning of the research project improves the possibility of reproducibility and can save significant effort over the course of the project by making it easier to add and regather data later on. 

A key part of data gathering with R is segmenting the process into modular files that can all be run by a common "makefile." There are two types of source code files that the makefile runs: data gathering/clean up files and merging files. Data clean up files bring raw data sources into R and transform them so that they can be merged together with data from the other sources. Merging files are executed by the makefile after it runs the data gathering/clean up files. 

As a useful practice, the source code should avoid directly changing raw data files. Instead changes should be put into new objects and data files. Doing this makes it easier to reconstruct the steps to create the data set.

Importing Locally Stored Data Sets
---
Although storing data locally is discouraged, most research projects will involve loading data this way at some point.  Data stored in plain-text files on the computer can be loaded into R using the `read.table` command.

If the data is saved in a format created by other programs, such as SPSS, SAS, or Stata, we can import it using commands in the *foreign* package.  Commands in the *foreign* package have similar syntax to `read.table`.

If the data is stored in a spreadsheet format such as Excel's .*xlsx*, it is best to first clean up the data by hand and then save the file in plain-text format. When cleaning up the data, make sure that the first row has the variable names and that observations are in the following rows. Also, remove any extraneous information such as notes, colors, and so on that will not be part of the data frame.

Importing Data Sets from the Internet
--
To import data into R from a **non-secure URL** - ones that start with `http`- is easily accomplished by using the command `read.table(file="URL")` provided that:
<ul>
<li>the data is stored in a simple format, e.g., plain-text,</li>
<li>the file is not embedded in a larger HTML website.</li>
</ul>

Importing data into R from  a **secure URL** - ones that start with `https`- involves more work.  There are at least three methods for downloading data into R: `source_data, source_DropboxData`, and the *RCurl* package.

Sometimes, importing data into R from the Internet involves dealing with **compressed data files**. In most cases, we can download, decompress, and create data frame objects from these files directly in R. To do this we need to:
<ul>
<li>create a temporary file with `tempfile` to store the zipped file, which we will later remove with the `unlink` command,</li>
<li>download the file with `download.file`,</li>
<li>decompress the file with one of the `connections` commands in base R,</li>
<li>read the file with `read.table`,</li>
</ul>
For example,

`url<- "http://bit.ly/file.name"`

`temp<-tempfile()`

`download.file(url,temp)`

`Data<- read.csv(gzfile(temp, "name.csv"))`

`unlink(temp)`


