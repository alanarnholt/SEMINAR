library(googleVis)
library(reshape2)
attach(Fruits)
head(Fruits)
table<- plot(gvisTable(Fruits))
motion<- plot(gvisMotionChart(Fruits, idvar= "Fruit", timevar="Year"))

