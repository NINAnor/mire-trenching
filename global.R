# Global script making output available for all chapters
# 
# 

library(sf)
library(tidyverse)
library(stars)

lev <- sf::read_sf("data/lev.gpkg")
lev_bb <- sf::st_bbox(lev)
myx <- unname(round(lev_bb["xmax"] - lev_bb["xmin"]))
myy <- unname(round(lev_bb["ymax"] - lev_bb["ymin"]))
