# load threejs library
library("threejs")

# load dataset
data("iris")

# explore dataset
View(iris)

# create vectors for plots
x <- iris$Sepal.Length
y <- iris$Petal.Length
z <- iris$Sepal.Width


# plotting using threeJS
scatterplot3js(x,y,z, color=rainbow(length(z)))

# change style
scatterplot3js(x,y,z, color=heat.colors(length(z)))

N = length(levels(iris$Species))
scatterplot3js(x,y,z, size =0.5, color = rainbow(N)[iris$Species])

scatterplot3js(x,y,z, pch='x', size=0.3, color = rainbow(length(z)))





