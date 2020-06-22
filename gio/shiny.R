library(shiny)

ui <- fluidPage(
  gioOutput("globe2"),
  verbatimTextOutput("selected")
)

server <- function(input, output, session) {

  output$globe2 <- renderGio({
    random_data(1000) %>%
        gio()
  })

  output$selected <- renderPrint({
    print(input$globe2_selected_country)
  })

}

shinyApp(ui, server)
