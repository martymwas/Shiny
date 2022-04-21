library(shiny)
library(shinythemes)
ui<- fluidPage(theme = shinytheme("superhero"),
        titlePanel("Measurement"),
        sidebarLayout(
          sidebarPanel(numericInput("numInput1", "length", 
                                    value = 9, min = 1, max = 30),
          numericInput("numInput2", "Width", 
                        value = 7, min = 1, max = 30)),
          
          mainPanel(h2("Output"),
            textOutput("textOutput")
                    )
          
        )
  
)

server <- function(input, output){
        output$textOutput = renderText({
        paste0("Area of a rectangle: ", input$numInput1*input$numInput2)
        })
}

shinyApp(ui = ui , server = server)