Chapter 3 Getting Started with R, RStudio, and Knitr
===========================================

R
==
R is a statistical programming language, often referred to as an "object-oriented language." This means everything can be viewed as objects and R commands or functions call for actions on those objects.

An **object** can be numeric or character-stringed or both. The simplest form of an object in R is a **vector**, which is an ordered group of numbers, character strings, or both. Other typical types of object include: data frame, matrix, and table, which are usually made up by putting together several vectors.

Working with data in a vectors, such as displaying or performing calculations, is quite simple. However, manipulating data within a data frame requires some extensive knowledge. One useful way to select certain part of a data frame is the use of the *componenent selector* ($). For example, using this R command `mean(data$subdata1)` means that we want to calculate the mean of `subdata1` which is a vector in the data frame `data`.

A **function* or **command** acts on objects. In R, a command is followed by the set parentheses enclosing the specified object that the command will act on, along with a set of command arguments. For example, `mean(x=data, trim=0.10)`. To find all the arguments that a command can accept look at the **Arguments** section of the command's help file. To access the help file type: `?command`; for example, `?mean`.

RStudio
==
RStudio is an integrated development environment for R. It provides a centralized and well organized place to do almost anything we want with R, and more. A default RStudio window contain three panes. The one on the left side is the *Console* which functions exactly the same as the console in regular R. In the upper right-hand corner, the *Workspace/History* helps users keep track of objects they have in the workspace, and the history of the commands they have run. Finally, the *Files/Plots/Packages/Help/Viewer* pane in the lower right-hand corner helps user navigate their files, see plots, or pull up help files.

`knitr`
==
The package `knitr` is an R package with commands for tying analysis code into presentation documents including those written in Latex and Markdown. The `knitr` process takes three steps. It begins with a *knittable* document that we create containing analysis source codes and rules for how to format the text (the markup). Then `knitr` will *knit* the source document into a *markup only document*. Finally, it then compiles the markup document into a presentation document such as pdf or html.
