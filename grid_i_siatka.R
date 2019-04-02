library(sf)
library(sp)
library(dplyr)
library(raster)

#punkty i geometria
path = 'C:/Users/Lenovo/Desktop/Programowanie/inzynier/dane/punkty1.shp'
punkty1 <- st_read(path)
geom <- st_geometry(punkty1)
punkty_proj <- st_crs(punkty1)
plot(geom)

#siatka

#dlaczego nie to?       class(grd) = "sfc_POLYGON" "sfc"
#grd <- st_make_grid(punkty1)
#plot(grd)


grid <- raster(extent(punkty1))
st_crs(punkty1) == crs(grid) #dlaczego FALSE skoro bralam pod uwage punkty1

#wyswietlanie rastra (?)

rasteryzacja <-  rasterize(punkty1, grid, field = 1, fun = "count")
rasteryzacja@data@values
