library("shiny")
library(bslib)

ui <- page_navbar(
  title="ML StudioX",
  theme = bs_theme(version=5, bootswatch = "zephyr")
)

server <- function(input, output) {
}

shinyApp(ui, server)