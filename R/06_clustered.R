# clustered
punkty_4326 <- st_transform(punkty, crs = 4326)

sp_punkty_4326 <- as(punkty_4326, "Spatial")
# coordinates(sp_punkty_4326) <- ~x + y
# proj4string(sp_punkty_4326) <- "+init=epsg:4326"
spTransform(sp_punkty_4326, CRS(proj4string(sp_punkty_4326)))
clustered1 <- spsample(sp_punkty_4326, 298, type = "clustered")
plot(clustered1)

sf_clustered1 <- st_as_sf(clustered1)
sf_clustered1 <- st_set_crs(sf_clustered1, 4326)




punkty_2180 <- st_transform(punkty, crs = 2180)

sp_punkty_2180 <- as(punkty_2180, "Spatial")
# coordinates(sp_punkty_2180) <- ~x + y
# proj4string(sp_punkty_2180) <- "+init=epsg:2180"
spTransform(sp_punkty_2180, CRS(proj4string(sp_punkty_2180)))
clustered2 <- spsample(sp_punkty_2180, 315, type = "clustered")
plot(clustered2)

sf_clustered2 <- st_as_sf(clustered2)
sf_clustered2 <- st_set_crs(sf_clustered2, 2180)




punkty_4839 <- st_transform(punkty, crs = 4839)

sp_punkty_4839 <- as(punkty_4839, "Spatial")
# coordinates(sp_punkty_4839) <- ~x + y
# proj4string(sp_punkty_4839) <- "+init=epsg:4839"
spTransform(sp_punkty_4839, CRS(proj4string(sp_punkty_4839)))
clustered3 <- spsample(sp_punkty_4839, 326, type = "clustered")
plot(clustered3)

sf_clustered3 <- st_as_sf(clustered3)
sf_clustered3 <- st_set_crs(sf_clustered3, 4839)




punkty_3577 <- st_transform(punkty, crs = 3577)

sp_punkty_3577 <- as(punkty_3577, "Spatial")
# coordinates(sp_punkty_3577) <- ~x + y
# proj4string(sp_punkty_3577) <- "+init=epsg:3577"
spTransform(sp_punkty_3577, CRS(proj4string(sp_punkty_3577)))
clustered4 <- spsample(sp_punkty_3577, 100, type = "clustered")
plot(clustered4)

sf_clustered4 <- st_as_sf(clustered4)
sf_clustered4 <- st_set_crs(sf_clustered4, 3577)




punkty_6444 <- st_transform(punkty, crs = 6444)

sp_punkty_6444 <- as(punkty_6444, "Spatial")
# coordinates(sp_punkty_6444) <- ~x + y
# proj4string(sp_punkty_6444) <- "+init=epsg:6444"
spTransform(sp_punkty_6444, CRS(proj4string(sp_punkty_6444)))
clustered5 <- spsample(sp_punkty_6444, 200, type = "clustered")
plot(clustered5)

sf_clustered5 <- st_as_sf(clustered5)
sf_clustered5 <- st_set_crs(sf_clustered5, 6444)
