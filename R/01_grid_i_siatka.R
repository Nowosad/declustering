library(sf)
library(sp)
library(dplyr)
library(raster)

# punkty i geometria
path = 'dane/punkty1.shp'
punkty1 <- st_read(path)
geom <- st_geometry(punkty1)
punkty_proj <- st_crs(punkty1)
plot(geom)

# siatka
grd <- st_make_grid(punkty1)
plot(grd)
plot(geom, add = TRUE)

# od dolu od lewej do prawej kazdy wiersz
ver1 <- st_intersects(grd, geom, sparse = TRUE) # zwraca, ktory punkt znajduje sie w danym gridzie

# macierz z iloscia punktow w kolumnach i z iloscia oczek siatki w wierszach, zwraca wartosc TRUE, gdy dany punkt zawiera sie w danej komorce
ver2 <- st_intersects(grd, geom, sparse = FALSE)

# dla 6 oczka siatki najpierw sprawdzana jest jego sekwencja(1 2, bo sa 2 punkty w oczku), a nastepnie losuje sie jeden element za pomoca funkcji sample
ver1[[6]][sample(seq_along(ver1[[6]]), size = 1)]

# punkty1[c(2, 5, 6, 7, 8), ]


# siatka zbudowana w obrebie punktow do wizualizacji
# grid <- raster(extent(punkty1))
# crs(grid) = crs(punkty1)
# st_crs(punkty1) == crs(grid) #dlaczego FALSE skoro bralam pod uwage punkty1
# grid[] <- 0 #raster musi miec jakas wartosc
# plot(grid)

# wizualizacja ilosci punktow
# rasteryzacja <- rasterize(punkty1, grid, field = 1, fun = "count")
# plot(rasteryzacja)
# rasteryzacja@data@values
