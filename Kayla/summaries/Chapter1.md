Kayla Janos 
**_Chapter 1: Introducing Reproducible Research_**
========================================================
* Presentation Documents like slideshows, journal articles, books, or websites, announce a projects findings and try to convince us that the results are correct 
  * These documents are not the research
  * These types of documents are more like advertising 
* Research is the full software environment, code, and data that produced the results 
* When we separate the research from its advertisement we are making it difficult for others to verify the findings by reproducing them  
* Book is meant to help learn how to combine research with the presentation of the findings 
* Will learn to use programs, R along with LaTeX, Markdown, knitr
  * R Studio will also be used to bring all of these tools together in one place 


**1.1: What is Reproducible research?**
* In order for research to be reproducible there must be enough information about the project available so that other people are able to produce the same findings using the same procedures that were done 
  * Should be able to verify that the old results match the newly produced ones 
  * Problems may occur when it is hard to reproduce the same data set because of resources 
* The goal is to aim for Really Producible Research 
  * The data and code used to make a finding are available and they are sufficient for an independent researcher to recreate the finding 
* The goal of reproducible research is to create research that is easy for researchers to reproduce. 
  * If it is hard to replicate the research, its highly unlikely that it will be done 
  * If the difficult research is reproduced it is hard to tell if the errors came from the original research or from the reproduction of the research 
  * The goal of this book is to learn how to avoid the problems 
* One of  the tools that we will learn, is _knitting_ the source code and data together in presentation documents  

**1.2: Why should research be reproducible**  

_For Science_  
* Standard to judge scientific claims 
  * Helps us to keep what works, and dispose of what doesnt
  * In order to test a scientific claim, the research done must be reproducible 
  * Research cant really be considered impactful unless it has been verified through replication
* Avoiding effort duplication and encouraging cumulative knowledge development
  * While reproducibility is important for evaluating scientific claims, it is also able to help enable the growth of future scientific knowledge 
  * Helps to cut down on the number of people who spend time trying to gather data or create procedures that may have already been done. 
  * Since they dont have to find the results on their own, they can move on to building on the findings and even develop new ideas
  
_For you_  

_Better working habits_  
* Ensuring that your research is reproducible will in turn cause you to use better work habits
* Helps to encourage better organization and planning of your research
* Having reproducible research should also result in a higher level of your coding, and data collection 
  * Since your research has to be stored where other researchers can easily find it, you also will be able to find and edit your research at a later date easier 
  * Which means you can build on your own work more efficiently   

_Better Teamwork_  
* It is easier for your collaborators to understand your research if you do your work in a way that it can be reproduced  

_Changes are easier_  
* Most research processes are not linear
  * There is almost always back tracking that is done to add variables or change the models etc. 
* When research is done in a way that is reproducible, going back to make changes down the road will be easier since you dont have to spend time contemplating exactly how you did something 
* Changing one part, normally has an effect on other parts if your research is done in a way that it is reproducible it will be easier to follow the change through the end of the research  

_Higher Research Impact_  
* When research is completely reproducible it contains more information which will eventually lead to more reasons for it to be used and cited 
* May be able to use the research and reproduce it to answer other questions that were not expected to arise from the research

**1.3: Who should read this book?**  

The book is geared towards researches that are looking to use an approach to their research that ensures that it will be able to be reproducible.  
* Targets people who do not have much experience with R, LaTeX, and Markdown
* Types of people who could use it	
  * Academic researchers
  * Students
  * Instructors
  * Editors
  * Private sector researchers 
  
**1.4: The tools of reproducible research**

There is two broad sets of tools  
* Reproducible research environment
  * Includes all the tool needed to run the analysis 
  * Has the ability to track the data for redistribution
* Reproducible research publisher
  * Makes the data presentable
  * Links back to the research environment
* Books main focus is on R/Rstudio and how they can be used to produce reproducible research 
   * The main tools covered
  * R, knitr, markup languages, Rstudio, Cloud Storage and versioning, and Unix-like shell programs

**1.5: Why use these programs?**

* R
  * Constantly expanding on what it is capable of 
  * Allows for dynamically connecting data to presentation articles
  * Source code is a huge step in creating reproducible research
* Knitr
  * The ability to link the research done with the presentation product, makes retracing your steps much easier
  * Knitr works with more markup languages than just LaTeX
  * Syntax is much more simple and straight forward 
* RStudio
  * RStudio simplies R so that it is easier to use 
  * Its a good editor for writing documents in LaTeX and markdown
  
* Information on how to install the programs
  * R: http://www.r-project.org/
  * RStudio: http://www.rstudio.com/ide/download/
  * For LaTeX you must install a TeX distribution:  
     http://www.latex-project.org/ftp.html
     
**1.6: Book Overview**
* The books purpose is to give us the tools we need to produce reproducible research
* It is not a complete reference for the programs taught 






