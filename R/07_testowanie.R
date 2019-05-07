# testy
# obiekt = geom
# liczba_punktow = 100
# typ = "random"
# 
# geom2 <- st_transform(geom, crs = 2180)
# obiekt = geom2

testowanie <- function(obiekt, liczba_punktow, typ){

  sp_a <- as(obiekt, "Spatial")
  prob_a <- sp::spsample(sp_a, liczba_punktow, type = typ)
  sf_prob_a <- st_as_sf(prob_a)

  return(sf_prob_a)
}

source("R/02_rozgr_losowe_z_oczka.R")
gridRandom(testowanie(geom, 500, typ = "random"), 0.01, 2)

testowanie_random <- function(obiekt, epsg, liczba_punktow){
  # a <- st_transform(obiekt, crs = epsg)
  
  sp_a <- as(obiekt, "Spatial")
  # coordinates(sp_punkty_4326) <- ~x + y
  # proj4string(sp_punkty_4326) <- "+init=epsg:...."
  # spTransform(sp_a, CRS(proj4string(sp_a)))
  prob_a <- sp::spsample(sp_a, liczba_punktow, type = "random")
  # plot(prob_a)
  
  sf_prob_a <- st_as_sf(prob_a)
  # sf_prob_a <- st_set_crs(sf_prob_a, epsg)
  
  return(sf_prob_a)
}



testowanie_regular <- function(obiekt, epsg, liczba_punktow){
  a <- st_transform(obiekt, crs = epsg)
  
  sp_a <- as(a, "Spatial")
  # coordinates(sp_punkty_4326) <- ~x + y
  # proj4string(sp_punkty_4326) <- "+init=epsg:...."
  spTransform(sp_a, CRS(proj4string(sp_a)))
  prob_a <- spsample(sp_a, liczba_punktow, type = "regular")
  # plot(prob_a)
  
  sf_prob_a <- st_as_sf(prob_a)
  sf_prob_a <- st_set_crs(sf_prob_a, epsg)
  
  return(sf_prob_a)
}


testowanie_stratyf <- function(obiekt, epsg, liczba_punktow){
  a <- st_transform(obiekt, crs = epsg)
  
  sp_a <- as(a, "Spatial")
  # coordinates(sp_punkty_4326) <- ~x + y
  # proj4string(sp_punkty_4326) <- "+init=epsg:...."
  spTransform(sp_a, CRS(proj4string(sp_a)))
  prob_a <- spsample(sp_a, liczba_punktow, type = "stratified")
  # plot(prob_a)
  
  sf_prob_a <- st_as_sf(prob_a)
  sf_prob_a <- st_set_crs(sf_prob_a, epsg)
  
  return(sf_prob_a)
}


testowanie_pref <- function(obiekt, epgs, liczba_punktow){
  a <- st_transform(obiekt, crs = epsg)
  
  sp_a <- as(a, "Spatial")
  # coordinates(sp_punkty_4326) <- ~x + y
  # proj4string(sp_punkty_4326) <- "+init=epsg:...."
  spTransform(sp_a, CRS(proj4string(sp_a)))
  prob_a <- spsample(sp_a, liczba_punktow, type = "clustered")
  # plot(prob_a)
  
  sf_prob_a <- st_as_sf(prob_a)
  sf_prob_a <- st_set_crs(sf_prob_a, epsg)
  
  return(sf_prob_a)
}