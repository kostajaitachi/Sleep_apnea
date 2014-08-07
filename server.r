diabetiesRisk <- function(glucose)glucose/200

shinyServer(
  function(input,output)
    {
    
    output$inputValue <- renderPrint({input$glucose})
    output$prediction <- renderPrint({diabetiesRisk(input$glucose)})
    
  })