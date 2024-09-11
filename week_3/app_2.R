# load shiny
library("shiny")

# ui code
ui <- fluidPage(
  titlePanel("My second Shiny App"),
  sidebarLayout(
    sidebarPanel(
      # first text input
      textInput("productNameInput", "Please enter the product name: "),
      
      # product code
      numericInput("productCodeOutput", "Please neter the product code: ", value=3, min = 1, max=9, step=1),
      
      # product brand
      selectInput("productBrandOutput", "Please select a product brand: ", choices = c("Apple", "Samsung", "Google"))
    ),
    mainPanel(
      h2("Product details"),
      p("The details of the chose product will be displayed below."),
      # product name output
      textOutput("productNameOutput"),
      # product code output
      textOutput("productCodeOutput"),
      # product brand output
      textOutput("productBrandOutput"),
    )
  ),
)


# server code
server <- function(input, output) {
  output$productNameOutput <- renderText({
    paste("The chosen product details is : ", input$productNameInput, input$productCodeOutput, input$productBrandOutput)
  })
}

# app
shinyApp(ui=ui, server=server)