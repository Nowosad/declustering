# points - objekt przestrzenny
# cellsize - rozdzielczosc 
# numpoints - liczba punktow wybranych z oczka siatki

points = geom
cellsize = 0.01
numpoints = 1

gridRandom <- function(points, cellsize, numpoints){
  # points <- st_read(obj)
  geom <- st_geometry(points)
  proj <- st_crs(points)
  grid <- st_make_grid(points)
  intersection <- st_intersects(grd, geom, sparse = TRUE)
  
  for (i in seq_along(intersection)){
    if (numpoints < length(intersection[[i]])){
      if (length(intersection[[i]]) > 0){
        x <- intersection[[i]][sample(seq_along(intersection[[i]]), size = numpoints)]
        intersection[[i]] <- x
      }
    } else {
      x <- intersection[[i]][sample(seq_along(intersection[[i]]), size = length(intersection[[i]]))]
      intersection[[i]] <- x
    }
  }
  return(intersection)
}

