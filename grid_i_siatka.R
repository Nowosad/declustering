library(sf)
library(sp)
library(dplyr)
library(raster)

#punkty i geometria
path = 'dane/punkty1.shp'
punkty1 <- st_read(path)
geom <- st_geometry(punkty1)
punkty_proj <- st_crs(punkty1)
plot(geom)

#siatka

#dlaczego nie to?       class(grd) = "sfc_POLYGON" "sfc"
grd <- st_make_grid(punkty1)
plot(grd)
plot(geom, add = TRUE)

ver1 <- st_intersects(grd, geom, sparse = TRUE)
ver2 <- st_intersects(grd, geom, sparse = FALSE)

ver1[[6]][sample(seq_along(ver1[[6]]), size = 1)]

# punkty1[c(2, 5, 6, 7, 8), ]

grid <- raster(extent(punkty1))
crs(grid) = crs(punkty1)
# st_crs(punkty1) == crs(grid) #dlaczego FALSE skoro bralam pod uwage punkty1
grid[] <- 0
plot(grid)

#wyswietlanie rastra (?)
# rasteryzacja <- rasterize(punkty1, grid, field = 1, fun = "count")
# plot(rasteryzacja)
# rasteryzacja@data@values
