library(maps) # package has maps
### Experiment now
library(PASWR2)
NC_map <- map_data(map = 'county', region = 'north carolina')
MERGED <- merge(NC_map, NC2010DMG, by.x = "subregion", by.y = "countyName")
head(MERGED)
###############
p <- ggplot(data = MERGED, aes(x = long, y = lat, group = group, fill = evanrate))
p + geom_polygon()
p + geom_polygon(color = "red", lwd = .2) + theme_bw()
p1 <- p + geom_polygon(color = "white", lwd = .2) + 
  theme_bw() +
  coord_fixed()  # coord_fixed() results in 1:1 scaling between x and y axes
p1
#
library(mapproj)
p1 + coord_map("polyconic")
p1 + coord_map("polyconic") + scale_fill_gradient2()
##################################################################### http://www.osbm.state.nc.us/ncosbm/facts_and_figures/socioeconomic_data/population_estimates/demog/countygrowth_cert_2012.html
#### convert counties to lower case
NCgrowth <- read.csv("./R-Scripts/NCgrowth.csv")
head(NCgrowth)
NCgrowth$County <- tolower(NCgrowth$County)
head(NCgrowth)
NC_map <- map_data(map = 'county', region = 'north carolina')
MERGED2 <- merge(NC_map, NCgrowth, by.x = "subregion", by.y = "County")
head(MERGED2)
p <- ggplot(data = MERGED2, aes(x = long, y = lat, 
                                group = group, fill = Percent))
p + geom_polygon()
p + geom_polygon(color = "red", lwd = .2) + theme_bw()
p1 <- p + geom_polygon(color = "black", lwd = .2) + 
  theme_bw() +
  scale_fill_gradient2(low = "red", mid = "white", high = "green4", name = "Percent\nChange") + 
  coord_fixed()  # coord_fixed() results in 1:1 scaling between x and y axes
p1
p1 + coord_map("polyconic") + ggtitle("North Carolina Growth Change by County")
####################################################################
world_map <- map_data("world")
sort(unique(world_map$region))
ESP <- map_data("world", "Spain")
IB <- map_data("world", c("Spain", "Portugal"))
## Problem is this offers no provinces...
head(ESP)  
ggplot(data = ESP, aes(x = long, y = lat, group = group)) + geom_polygon(fill = "pink") + theme_bw() + coord_fixed()
ggplot(data = IB, aes(x = long, y = lat, group = group)) + geom_polygon(fill = "pink") + theme_bw() + coord_fixed()
#### try google and ggmap()
library(ggmap)
boone <- "Boone, NC"
geocode("Boone, NC")
House <- "155 Keystone Dr, Boone, NC"
qmap(boone, zoom = 14) + geom_point(aes(x = lon, y = lat), data = geocode(House))
ASU <- "Appalachian State Univeristy"
qmap(ASU, zoom = 15, source = "osm") 
qmap("spain", zoom = 6)
qmap("pamplona", zoom = 13)
qmap("pamplona", zoom = 14)
qmap("Universidad Publica de Navarra", zoom = 15)
qmap("Universidad Publica de Navarra", zoom = 16, source = "stamen", maptype = "toner")
#####
SPAIN <- get_map(location="spain")
str(SPAIN)
ggmap(SPAIN)
ggmap(SPAIN, extent = "normal")
##################################################################
qmap("Vietnam", zoom = 5)
geocode("Kon Tum, Vietnam")
qmap("Kon Tum, Vietnam", zoom = 14)
qmap("Ho Chi Minh City, Vietnam", zoom = 7)
##################################################################
NC <- get_map(location = "North Carolina")
str(NC)
ggmap(NC)
from <- c("Boone, NC", "Boone, NC", "Boone, NC")
to <-  c("Raleigh, NC", "Colorado Springs, CO", "Greensboro, NC")
mapdist(from, to)
####################################################################
legs_df <- route("Boone, NC", "Raleigh, NC", alternatives = TRUE)
qmap("North Carolina", zoom = 7, base_layer = ggplot(aes(x = startLon, y = startLat), data = legs_df)) + 
  geom_leg(aes(x = startLon, y = startLat, xend = endLon, yend = endLat, color = route), size = 2, alpha = .5, data = legs_df) + 
  facet_wrap(~route) + theme(legend.position = "top")
####################################################################
####################################################################

####################################################################
ggplot(data = map_data(map = 'france'), aes(long, lat, group = group, fill = region)) + geom_polygon(color = 'blue', lwd = .2) + theme_bw() + guides(fill = FALSE)
##
ggplot(data = map_data(map ='county'), aes(long, lat, group = group)) + geom_polygon(fill = "pink") + theme_bw() + coord_fixed() 
##
ggplot(data = map_data(map = 'county', region = "north carolina"), aes(long, lat, group = group, fill = subregion)) + geom_polygon(color = 'black') + theme_bw() + guides(fill = FALSE) + coord_fixed() 
#####################################################################
library(maptools)
#
library(devtools)
install_github("choroplethr", "trulia")
library(choroplethr)
# a state choropleth
df = data.frame(region=state.abb, value=sample(100, 50))
choroplethr(df, lod="state")
choroplethr(df, lod="state") + coord_fixed()
# a county choropleth
data(county.fips, package="maps")
df = data.frame(region=county.fips$fips, value=sample(100, nrow(county.fips), replace=TRUE))
choroplethr(df, "county", 2)
# a zip choropleth
data(zipcode, package="zipcode", envir=environment())
df = data.frame(region=zipcode$zi, value = sample(100, nrow(zipcode), replace=TRUE))
choroplethr(df, "zip", 9)
# http://www.eea.europa.eu/data-and-maps/data/eea-reference-grids/zipped-shape-file-spain/zipped-shape-file-spain
# downloaded 2/21/14
library(maptools)
# Load shapefile and convert to a data frame
# Problems with Shape File!!!! argh
# spain_shp <- readShapePoly("ESP_adm0.shp")
# spain_map <- fortify(spain_shp)
# p <- ggplot(data = spain_map, aes(x = long, y = lat, group = group)) + geom_path()
# p
