**Chapter 9: Showing Results with Tables**
========================================================
- Learning how to dynamically connect statistical results with tables in your presentation helps to not only save you time but also helps to make them more reproducible
- There are a number of ways to turn R objects into tables 
- The focus of this chapter will be the use of _xtable_ and _apsrtable_ packages  

**9.1: Basic _knitr_ Styntax for tables**
- The most important code chunk option is the 'results' option
- `results` option can have one of three values 
  - `markup` uses an output hook to mark up the results in a predefined way
  - `hide` hides the results
  - `asis` is the simplest option and write the raw markup form of the tbale into the document 
      - `asis` is what will be used throughout this chapter  
      
**9.2: Table Basics**
- Tables in LaTeX 
  - Tables in LaTeX are normally embedded in two enviroments, the `table` and `tabular` enviroments 
  - The `tabular` enviroment
      - To begin the enviroment type `\begin{tabular}{TABLE_SPEC}`
      - To have three columns the first being left aligned the last two being centered, instead of `{table_spac}` you would have `{l c c}`
      - Verticle bars ( | ) in the table_spec will put a a verticle line in between the colums
      - In the 'tabular' eviroment columns are delimited with & 
      - New lines are started with \\ 
      - \hline between lines will give you a verticle line rows 
  - Table float enviroment 
      - After you begin your table, in square brackets you can add a position_spec that allows you to determine the location of the table
          - t lets you put it at the top of the page
          - h lets you put it where the text was
          - b puts it at the bottom of the page 
      - To add a title for the table use the `\caption` command 
      - Place tabular into the table enviroment to add the table
- Tables in Markdown/HTML
  - Markdown tables
      - They are much more simple than the LaTeX formatting 
      - Verticle bars seperate columns 
      - Rows are started with a new line
      - Use dashes to seperate the head of the table from the rest of the table 
      - Colons on the horizontal dashes help to set up the justification
      - You can add a caption with the heading syntax
  - HTML tables
      - HTML uses tags to begin and end tables 
      - The main element used to create tables, is just simple the `tables` element 
      - HTML tags(eviroment) start with <...> and end with </...>
      - You can add attributes inside of start tags 
      - You can seperate table heads from the body with `thead` and `tbody` tags 
      - Table rows are in `tr` tags and cells are delimited with `td`  
      
**9.3: Creating tables from R objects**
- _xtable_ and _apsrtable_ packages are easy to use to convert an object of the class they support into a table 
- To find the full list of objects that _xtable_ supports use the command `methods(xtable)` into the R console 
- To see _apsrtable's_ supported classes use the command `showMethods("modelInfo")`
- xtable for LaTex
  - You have to first have two code chunk options, the first being `results='asis'` the second being `echo=FALSE`
  - 
    

