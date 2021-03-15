# Load libraries
library('raster')
library('geosphere')
library('mapview') 
library(maptools)
library(rgeos)
library(sf)

# Get SpatialPolygonsDataFrame object example
pols<- getData('GADM', country = 'DK', level = 2)

#Project to suitable projection (to be able to calculate area, see later
utm32 = "+proj=utm +zone=32 +ellps=WGS84 +units=m +no_defs"
pols <- spTransform(pols, CRS(utm32))

mapview(pols)
