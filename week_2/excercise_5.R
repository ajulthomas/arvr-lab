# install packages
# install.packages("plotly")


# load package
library(plotly)


# load dataset
data("iris")

# create vectors for plots
x <- iris$Sepal.Length
y <- iris$Petal.Length
z <- iris$Sepal.Width


# scatter plot
p <- plot_ly(iris, x=~x, y=~y, z=~z)
p <- add_markers(p, color = ~Species)
p
# add labels to the plot
variables <-names(iris)
layout(p, scene = list(xaxis = list(title = variables[1]),
                       yaxis = list(title = variables[2]),
                       zaxis = list(title = variables[3])))


# surface plot
p <- plot_ly(z = volcano, type = "surface")
p

# Install and load package
install.packages("htmlwidgets")
library(htmlwidgets)
# save the plot in working directory
saveWidget(p, file=paste0( getwd(), "/3dSurface.html"))



