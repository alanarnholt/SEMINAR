Kayla Janos 
**Chapter 11: Presenting with LaTeX**
========================================================
**11.1: The basicis**
- To create a LaTeX in RStudio, you use an R sweave file  
- Sweave files are LaTeX files that can include _knitr_ code chunks 
- Rstudio will knit and compile your document at the same time 
- It is easy to add formatting with the format drop down menu in RSTudio 
- Basic LaTeX commands 
  - Commands start with a backslash (\)
  - Arguments are written inside curly braces ({})
  - If your command doesnt have an arguement you do not need the curly braces 
  - http://www.ntg.nl/doc/biemesderfer/ltxcrib.pdf is a place where you can find a comprehensive list of LaTeX commands 
- Preamble and Body
  - All LaTeX documents have to have a preamble 
  - Ususally starts with documentclass command 
  - The percent sign is LaTeX's comment character 
      - Specifies what type of artcile you are making LaTeX refers to them as classes 
  - You can add options to document class that change the enitre format of the document
      - \documentclass[twocolumn]{article} would give you an artcile with who columns 
  - You can also use the preamble to specify other style options and load any other packages you may want to use 
       - Most of the packagaes that you will want to use will already downloaded when you download TeX unlike R 
  - When your preamble is complete you must use the \begin{document} command to set the correct enviroment 
  - The very last line of the document should be \end{document}
  - It is also a good idea to include _knitr_ chunks in the preamble that set things such as global chunk options 
  - It is a smart practice to use the title, author, and date commands right after the document begins 
       - Right after all that information has been added you use the \maketitle command to display it 
  - \\ Force a new line in LaTeX 
  - The thanks command allows us to create a footnote for author  contact info that isnt numbered like other footnotes 
  - Headings
       - There are many levels of sections
       - section, subsection, paragraph, subparagraph
       - Headers are automatically numbered 
       - To have unnumbered headings write your command like this \section*{Unnumbered Section}
       - Chapter will create a new chapter
       - part will create collections of chapters 
  - Paragraphs and spacing 
       - Add blank lines between lines to create paragraphs 
       - The tabs for the start of the parapgrahs are determined by the artcile class
       - More blank lines does not mean more space you must use the vspace command to do that 
       - It is the same concept with horizontal spacing, extra spaces between words does not mean extra you the hspace command will need to be used 
  - Horizontal lines
        - The hrulefill will create horizontal lines in the text of a document 
  - Text Formatting 
        - emph command for italics 
        - textbf for cold 
        - You and nest them inside each other to have both 
        - You can set the font size for the entire docuemnt by using it as an option in the documentclass command in the preamble 
        - To change the size of specfic text you use the {\SIZE_COMMAND . . . } command, where you replace the SIZE_COMMAND with either Huge, huge, Large, large, normalsize, small, footnotesize, scriptsize, tiny. 
        - You can not directly enter letters wtih diacrtitics into LaTeX
        - \c{c} gives you a c with a cedilla 
        - \'{a} govesa you an a with a accent 
        - Quotation marks are done with 
  - Math
        - If you want to have math inline with your text you have to use the math syntax which is   \( . . . \) 
        - To have the math seperate from the text you place the math commands in square brackets instead \[...]\
  - Lists 
        - In order to create bullet lists in R you have to use the itemize enviroment 
        - \begin{itemize} starts the list 
        - \item is what you use to signify where you want the bullet 
        - You need to use \end{itemize} when you are done with the list 
        - Use enumerate to number instead of bullets 
        - You can use nesting to create sublists within lists 
  - Footnotes
        - \footnote{} is how to create a footnote, the information goes inside the curly braces 
        - LaTeX automatically numbers and formats for you  
        
**11.2: Bibliographies with BibTeX** 
- BibTeX bibliographies are stored in plain text files with th extention .bib
- The sytanx for the citation looks like:  
@DOCUMENT_TYPE{CITE_KEY,  
title = {TITLE},  
author = {AUTHOR},  
. . . = {. . .}  
}
- CITE_KEY is the reference label you use to include that ciation in the presentation document
  - The most common way of doing this is the authors surname and publication year
- Authors   
  - Multiple authors are sepereted by and 
  - BibTex assumes the last word for each author is their sure name 
  - To have multiple words as the surname enclose them in curly bracets 
- Each item entry must end in a commect except the last one 
- Including Citations in LaTeX documents 
  - To include citations from a BibTex file in your LaTeX document first use the bibliography command 
  - You can change the formatting of teh bibliograpy with the bibliograph style command 
      - Place this immedeately before the bibliography command 
  - Place the cite command in the documents text where you want to place a reference 
      - This is where you include your CITE_KEY information 
      - Square brackets can be used to add options to your citiation 
      - Multiple citations can be inlcuded by using a comma between them 
- Generating a BibTex file of R package citations 
  - use the citation command inside the code chunk
  - _knitr_ package creates BibTex bibliographies for R packages if you use the write_bib command 
- You can include more than one bibliography in the bibliography command by placing a comma between them 
- If you place all the packages that you want into a character vector, you can run it through write_bib and create a .bib file that way  

**11.3: Presentations with LaTeX Beamer**
- The beamer class is a way you can make a slideshow in LaTeX
- To create a beamer slideshow, set your documentclass to beamer 
- From there you start the document the same as  other classes 
- Individiual slides are created using the frame envrioments 
- Frame titles are make using frame title 
- Unfortunately you do not know until the document is compiled if you have put to much information on a slide 
- \tableofcontents can be automatically created from section headings, and will be on its own page
- List work the same way in beamer, but you have the added bonus of being able to determine how they appear
  - After \item enclose the number of the order you want it to appear in < -> 
