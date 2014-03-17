library(googleVis)
library(datasets)
states<- data.frame(state.name,state.x77)
plot(gvisGeoMap(states, "state.name", "Illiteracy", 
           options= list(region="US", dataMode="regions")))
