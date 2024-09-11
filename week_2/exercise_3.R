
# load three js
library("threejs")


# load data
data(ego)

graphjs(ego, bg="black")


# load data
data(world.cities, package = "maps")


cities <- world.cities[order(world.cities$pop, decreasing = TRUE)[1:500],]
value <- 100*cities$pop/max(cities$pop)

# plot using globejs
globejs(
  bg="#cacaca",
  lat=cities$lat,
  long = cities$long,
  values=value,
  rotationlat = -0.34,
  rotationlong = -0.38,
  fov=30
  )
