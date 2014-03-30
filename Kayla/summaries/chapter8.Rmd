**_Chapter 8: Statistical Modeling and knitr_**
========================================================
- _knitr_ allows you to dymanically tie together your data gathering, statistical analysis and presentation documents  

**8.1 Incorporting analyses into the Markup**
- For relatively short code it is sometimes easier to type it into a code chunk in your markup document, then have a differnet file with the code
- By default _knitr_ chunks are run by R 
  - The code, and any text output including errors and warnings are inserted into the text of your presentation document
- How code chunks are inserted into the presentation document
  - include
      - When include is set to false, nothing will appear in the text of your document 
  - eval
      - Set eval to false if you want to include the code in your document but not run it 
  - echo 
      - When echo = false you will not see the code only the results 
  - tidy 
      - If tidy=false then you can manually arrange your code the way you want
      - By default _knitr_ organizes the code with _formatR_ package 
  - warning, message, error 
      - set all three to false if you dont want the messages to come up
  - cache 
      - When set to true, code will only be ran the first time you compile the document. If not code will be ran each time the document is compiled
- Showing code & results inline 
  - LaTeX 
      - \texttt command in LaTeX will have the text show up in the typewriter font 
      - \verb command is a better option though, use something like | instead of curly brackets and LaTeX ignores everything inbetween the vertical bars 
      - \Sexpr allows you to dynamically show results
      - In other words the results of the code show up but not the text of the code its self 
  - Markdown
      - To include the code inline in markdown, enclose the code in single back ticks `....`
      - To have just the results inlucde a single r after the first backtick `r...`
- Dynamically including non-R code in code chunks  
  - You are not limited to just R code chunks in your presentation
  - _knitr_ can run a variety of other programs 
  use ther `engine` code chunk option to tell _knitr_ which language is being used 
  - Although _knitr_ supports these languages, it is not to the extent that _knitr_ supports R  
  
**8.2: Dynamically Including Modualr Analysis Files**
- There are numerous reason to have your R source code located in seperate files from your presentation document
  - One reason is it can become tedious to edit both your presentation and code in one document
  - Another reason is if you save the code in its own file, it becomes easier to use that code in multiple documents instead of copying and pasting it 
  - One last reason is it makes it easier for researchers who are only concered with parts of your reseach to access it 
- Source from a local file 
  - First you save your code to a file on your computer 
  - It works like a code chunk from here on out
  - Instead of writing code in the chunk, you just use the source command to access it 
- Sourcing from a non-secure URL (http)
  - Works the same way, by using the source command in a chunk, which then makes that data accessible for the rest of the presentation 
- Source from a secure URL (https)
  - You need to use the _devtools_ package and yhe 'source_url' command  
  
**8.3: Reproducibly Random: 'set.seed'**
- If you are including simulations in your analysis it is often a good idea to specify the random number generator you used 
- 'set.seed' command in your source code will allow users to exactly replicate your 'randomly' generated numbers 
