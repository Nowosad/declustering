# stratified
punkty_4326 <- st_transform(punkty, crs = 4326)

sp_punkty_4326 <- as(punkty_4326, "Spatial")
# coordinates(sp_punkty_4326) <- ~x + y
# proj4string(sp_punkty_4326) <- "+init=epsg:4326"
spTransform(sp_punkty_4326, CRS(proj4string(sp_punkty_4326)))
stratified1 <- spsample(sp_punkty_4326, 298, type = "stratified")
plot(stratified1)

sf_stratified1 <- st_as_sf(stratified1)
sf_stratified1 <- st_set_crs(sf_stratified1, 4326)




punkty_2180 <- st_transform(punkty, crs = 2180)

sp_punkty_2180 <- as(punkty_2180, "Spatial")
# coordinates(sp_punkty_2180) <- ~x + y
# proj4string(sp_punkty_2180) <- "+init=epsg:2180"
spTransform(sp_punkty_2180, CRS(proj4string(sp_punkty_2180)))
stratified2 <- spsample(sp_punkty_2180, 315, type = "stratified")
plot(stratified2)

sf_stratified2 <- st_as_sf(stratified2)
sf_stratified2 <- st_set_crs(sf_stratified2, 2180)




punkty_4839 <- st_transform(punkty, crs = 4839)

sp_punkty_4839 <- as(punkty_4839, "Spatial")
# coordinates(sp_punkty_4839) <- ~x + y
# proj4string(sp_punkty_4839) <- "+init=epsg:4839"
spTransform(sp_punkty_4839, CRS(proj4string(sp_punkty_4839)))
stratified3 <- spsample(sp_punkty_4839, 326, type = "stratified")
plot(stratified3)

sf_stratified3 <- st_as_sf(stratified3)
sf_stratified3 <- st_set_crs(sf_stratified3, 4839)




punkty_3577 <- st_transform(punkty, crs = 3577)

sp_punkty_3577 <- as(punkty_3577, "Spatial")
# coordinates(sp_punkty_3577) <- ~x + y
# proj4string(sp_punkty_3577) <- "+init=epsg:3577"
spTransform(sp_punkty_3577, CRS(proj4string(sp_punkty_3577)))
stratified4 <- spsample(sp_punkty_3577, 100, type = "stratified")
plot(stratified4)

sf_stratified4 <- st_as_sf(stratified4)
sf_stratified4 <- st_set_crs(sf_stratified4, 3577)




punkty_6444 <- st_transform(punkty, crs = 6444)

sp_punkty_6444 <- as(punkty_6444, "Spatial")
# coordinates(sp_punkty_6444) <- ~x + y
# proj4string(sp_punkty_6444) <- "+init=epsg:6444"
spTransform(sp_punkty_6444, CRS(proj4string(sp_punkty_6444)))
stratified5 <- spsample(sp_punkty_6444, 200, type = "stratified")
plot(stratified5)

sf_stratified5 <- st_as_sf(stratified5)
sf_stratified5 <- st_set_crs(sf_stratified5, 6444)
