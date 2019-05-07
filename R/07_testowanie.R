# testy
testowanie_random <- function(obiekt, epsg, ilosc_punktow){
  a <- st_transform(obiekt, crs = epsg)
  
  sp_a <- as(a, "Spatial")
  # coordinates(sp_punkty_4326) <- ~x + y
  # proj4string(sp_punkty_4326) <- "+init=epsg:...."
  spTransform(sp_a, CRS(proj4string(sp_a)))
  prob_a <- spsample(sp_a, ilosc_punktow, type = "random")
  # plot(prob_a)
  
  sf_prob_a <- st_as_sf(prob_a)
  sf_prob_a <- st_set_crs(sf_prob_a, epsg)
  
  return(sf_prob_a)
}



testowanie_regular <- function(obiekt, epsg, ilosc_punktow){
  a <- st_transform(obiekt, crs = epsg)
  
  sp_a <- as(a, "Spatial")
  # coordinates(sp_punkty_4326) <- ~x + y
  # proj4string(sp_punkty_4326) <- "+init=epsg:...."
  spTransform(sp_a, CRS(proj4string(sp_a)))
  prob_a <- spsample(sp_a, ilosc_punktow, type = "regular")
  # plot(prob_a)
  
  sf_prob_a <- st_as_sf(prob_a)
  sf_prob_a <- st_set_crs(sf_prob_a, epsg)
  
  return(sf_prob_a)
}


testowanie_stratyf <- function(obiekt, epsg, ilosc_punktow){
  a <- st_transform(obiekt, crs = epsg)
  
  sp_a <- as(a, "Spatial")
  # coordinates(sp_punkty_4326) <- ~x + y
  # proj4string(sp_punkty_4326) <- "+init=epsg:...."
  spTransform(sp_a, CRS(proj4string(sp_a)))
  prob_a <- spsample(sp_a, ilosc_punktow, type = "stratified")
  # plot(prob_a)
  
  sf_prob_a <- st_as_sf(prob_a)
  sf_prob_a <- st_set_crs(sf_prob_a, epsg)
  
  return(sf_prob_a)
}


testowanie_pref <- function(obiekt, epsg, ilosc_punktow){
  a <- st_transform(obiekt, crs = epsg)
  
  sp_a <- as(a, "Spatial")
  # coordinates(sp_punkty_4326) <- ~x + y
  # proj4string(sp_punkty_4326) <- "+init=epsg:...."
  spTransform(sp_a, CRS(proj4string(sp_a)))
  prob_a <- spsample(sp_a, ilosc_punktow, type = "clustered")
  # plot(prob_a)
  
  sf_prob_a <- st_as_sf(prob_a)
  sf_prob_a <- st_set_crs(sf_prob_a, epsg)
  
  return(sf_prob_a)
}