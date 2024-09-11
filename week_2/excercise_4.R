
# load library
library("rgl")

# load dataset
data("iris")

# create vectors for plots
x <- iris$Sepal.Length
y <- iris$Petal.Length
z <- iris$Sepal.Width


# plot the data
plot3d(x,y,z, size = 7, col=as.numeric(iris$Species))


plot3d(x,y,z, size = 2, col=as.numeric(iris$Species))

plot3d(
  x,y,z,  
  col=as.numeric(iris$Species),
  type="s",
  xlab="Sepal Length",
  ylab="Petal Length",
  zlab = "Sepal Width"
  )



plot3d(
  x,y,z,  
  col=as.numeric(iris$Species),
  type="s",
  xlab="Sepal Length",
  ylab="Petal Length",
  zlab = "Sepal Width",
  radius = 0.2
)


play3d(spin3d(axis = c(0,1,0), rpm = 20), duration=10)


movie3d(
  movie="3dAnimatedScatterplot",
  spin3d(axis = c(0,1,0), rpm=7),
  duration = 5,
  dir=getwd(),
  type="gif",
  clean=TRUE
)

