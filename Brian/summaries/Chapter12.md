Chapter 12 Large Latex Documents
===========================================
For longer and more complex documents such as books or theses, a single Latex file can quickly become difficult to handle. Potential problems include slow or crashed computer system due to large compiling file, extremely difficulty in finding and correcting an error, complicated revising process, and so on. An ideal solution is to segment the document into several smaller files, called **children** files, and to manage those children files through one main file, called **parent* document. This would profit us from a modular file structure while producing one presentation with continuous section and page numbering.

## Planning the Documents











## Basic Syntax

Unlike a Latex documents, RMarkdown does not require either a preamble or a body environment. To create a header, we can use the hash mark (\#) at the beginning of the header line. There are six levels of header, so the first level gets one hash mark (\#), the second gets two (\#\#), and so on. We can also create level one headers by following a line of text with equal (=) signs and level two by following a line of text with dashes (-):

`Level One`   
`=========`

`Level Two`  
`---------`

Horizontal lines that run the width of the page can be created by placing three or more equal (=) signs or dashes separated by text from above by one blank line:

`Horizontal lines`

`==========`

To *italicize* a word, place it between two asterisks (`*`) and to make words **bold**, place them between four asterisks. Markdown uses a backslash(\) as an escape character.

To typeset math equations in Markdown we use similar techniques as in Latex. For example, use a pair of dollar signs (\$) to enclose an inline math equation and use `\[ \]` for a display-style equation.

## Slideshows with Markdown and HTML

The easiest way to create an HTML slideshows is with the use of RStudio's R Presentation documents. To create a new file, go to `File` $\rightarrow$ `New` $\rightarrow$ `R Presentation`. The syntax for creating slides is quite simple.  The slide title is followed by three equal signs (===); this also indicates a new slide is added. The very first slide is automatically the title slide and will be formatted differently from the rest. 

Another way to create HTML slideshows is to use the *slidify* package.  This package converts R Markdown files into HTML slideshows. 
