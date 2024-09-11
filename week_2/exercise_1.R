# load 3D plots
library("plot3D")

# load dataset
data("iris")

# explore dataset
View(iris)

# create vectors for plots
x <- iris$Sepal.Length
y <- iris$Petal.Length
z <- iris$Sepal.Width


scatter3D(x,y,z, clab = c("Sepal", "Width (cm)"), theta = 45, phi = -10, colkey = FALSE)


scatter3D(x,y,z, colkey = FALSE, ticktype="detailed")


scatter3D(x,y,z, colvar = FALSE, col="blue", pch=10, cex=0.8)


scatter3D(x, y, z, bty = "f", colkey = FALSE, main="bty='f'")

scatter3D(x, y, z, bty="g", colkey = FALSE, main="bty='g", ticktype="detailed" )

# custom styles

scatter3D(x, y, z, pch =17, bty="u", main="bty='u'", colkey = FALSE, col.panel = "royalblue", expand=0.4, col.grid="linen")





