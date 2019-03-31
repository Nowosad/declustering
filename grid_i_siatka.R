library('sf')
library('sp')
library('dplyr')

path = "C:/Users/Lenovo/Desktop/Programowanie/inzynier/dane/punkty1.shp"
punkty1 <- st_read(path)
geom <- st_geometry(punkty1)
plot(geom)

grd <- st_make_grid(punkty1)
plot(grd)
plot(geom, add = TRUE)
