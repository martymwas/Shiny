
library(shiny)
library(shinythemes)

ui <- fluidPage(theme = shinytheme(theme =  "united"),
  headerPanel("Single Input App"),
  
  sidebarPanel(
    
    sliderInput("a", 
                label = "Select an input to display",
                min = 0, max = 100, value = 50)
  ),
  
  mainPanel(h1(textOutput("text")))
)

server <- function(input, output) {
  output$text <- renderText({
    print(input$a)
  })
}

shinyApp(ui, server)