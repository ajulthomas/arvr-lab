# load required libraraies
library("shiny")
library("threejs")


data(world.cities, package = "maps")
earth_image <- list(
  img=system.file("images/world.jpg", package = "threejs"),
  bodycolor = 
)

# define th UI
ui <- fluidPage(
  titlePanel("Relative population of world cities from R maps packages"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        "cityCount",
        "Select the number of cities to plot",
        value = 1000,
        min=100,
        max = 10000,
        step = 100
      ),
      p("Use the mouse to zoom in and zoom out"),
      p("Click and drag to rotate")
    ),
    mainPanel(
      globeOutput("globe")
    )
  )
)


# define the logic flow via the server
server <- function(input, output) {
  
}

# bootstrap the ui and server
shinyApp(ui=ui, server = server)