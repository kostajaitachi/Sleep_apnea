shinyUI(
  pageWithSidebar(
    
    # application title
    
    headerPanel("Diabeties Prediction"),
    
    sidebarPanel(
      numericInput('glucose','Glucose Level(mg/dl)',90,min = 50,max = 200,step = 5),
      submitButton('Submit')
    ),
    
    mainPanel(
      h3('Results of prediction'),
      h4('You Entered'),
      verbatimTextOutput('inputValue'),
      h4('which results in a prediction of'),
      verbatimTextOutput('prediction')
    )
  ))