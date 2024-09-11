
# load shiny 
library("shiny")

ui <- fluidPage(
  titlePanel("Data Visualiser"),
  sidebarLayout(
    textInput(
      "firstName",
      "First Name",
      "Ajul"
    ),
    mainPanel(
      textOutput("firstNameOutput")
    ),
  )
)

server <- function(input, output) {
  output$firstNameOutput <- renderText({
    paste("Your name is", input$firstName)
  })
}


shinyApp(ui=ui, server=server)