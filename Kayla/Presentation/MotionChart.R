library(googleVis)
attach(Fruits)
head(Fruits)
plot(gvisMotionChart(Fruits, idvar= "Fruit", timevar="Year"))

