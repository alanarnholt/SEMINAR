Chapter 7 Preparing Data for Analysis
===========================================

Cleaning Data for Merging
--
Most raw data will need cleaning up before we can use them for any analysis. Before we do anything to the data, we should look at the data first. R comes with some basic commands such as `head` to show the first few observations in the data frame, `tail` to show the last few observations in the, `names` to show the variable names, and `dim` to show the dimension of the data frame in the form of $\small {rows \times columns}$. In addition, the `summary` gives a basic descriptive statistics for all of the variables in a data frame. And to convert objects into dataframe, we use the command `data.frame`.

There are two main formats for data frames, "long" and "wide" formats. In "long" format, the data frame columns are variables and rows are specific observations. In "wide" format, columns are observations and rows are variables. Most R statistical tools assume that the data is in "long" format. For this reason, we may have to reshape some of our raw data from "wide" to "long" format. Preloaded with R, the matrix transpose command `t` and the command `reshape` can help us reshape the data. However, the author suggests that the package *reshape2* can provide better solution in this regard.

The data clean up process may include changing the names of our variables. Package *plyr* provides an easy solution for this with the command `rename`. We may also want to recode the variables. This is important when we merge data sets together since R can only use identical **identification values** to match each observation. This can be accomplished through the use of `x <- y` $-$ changing `x` to `y`. Furthermore, the commands `factor`, `character`, and `numeric` enable us to convert variables from one form to another. For example, the `factor` command can be used to convert a numeric variable to a factor variable.


Merging Data Sets
--
We can bind data sets, given they have the same dimension, by using commands `cbind` to bind columns or `rbind` to bind rows. However, the most effective way to merge two data sets together is with the `merge` command. (Note: If we need to merge more than two sets, repeat the command). The advantage of using the `merge` command is that it gives users the option to choose what to merge. For example, the R code 

`merge (x=DataA, y=DataB, by = "name")`

merges the two data sets `DataA` and `DataB`. The `by` argument specifies what variable in the two frames identify the observations so that we can match them.  If we need to merge data frames based on the overlap of two variables, we need to add the `union` command to the `by` argument. For example,

`merge (x=DataA, y=DataB, by = union("name1", "name2"))`.

Merging data sets sometimes creates a little post-merge "mess" that requires some clean up. Duplicate observations are one issue. The command `duplicated` is useful for identifying and removing duplicates in the data frames.  Another common issue is duplicate variables. If a variable needs to be removed, we can use function `remove.vars` from the package *gdata* to do this. 

