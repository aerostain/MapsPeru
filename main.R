library(sf)
library(tidyverse)
library(magrittr)
library(ggdark)

map0 <- st_read("gadm41_PER_shp/gadm41_PER_0.shp")
map1 <- st_read("gadm41_PER_shp/gadm41_PER_1.shp")
map2 <- st_read("gadm41_PER_shp/gadm41_PER_2.shp")
map3 <- st_read("gadm41_PER_shp/gadm41_PER_3.shp")

ggplot() +
  geom_sf(data = map0) +
  geom_sf(data = map1) +
  geom_sf(data = map2) +
  geom_sf(data = map3) +
  dark_mode()

ggplot() +
  geom_sf(data = map3, fill = "orange") +
  dark_mode()

map3 %>% str()
