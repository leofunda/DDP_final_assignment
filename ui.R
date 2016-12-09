

library("shiny")
shinyUI(pageWithSidebar(
  
  headerPanel("Mean and Standard Deviation - December 12th, 2016"),
  
  sidebarPanel(
    h3("Enter your data points"),
    
    numericInput("id1", "data point 1", 0, min=0, max=100, step=1),
    numericInput("id2", "data point 2", 0, min=0, max=100, step=1),
    numericInput("id3", "data point 3", 0, min=0, max=100, step=1),
    numericInput("id4", "data point 4", 0, min=0, max=100, step=1),
    numericInput("id5", "data point 5", 0, min=0, max=100, step=1),
    numericInput("id6", "data point 6", 0, min=0, max=100, step=1),
    numericInput("id7", "data point 7", 0, min=0, max=100, step=1),
    numericInput("id8", "data point 8", 0, min=0, max=100, step=1),
    numericInput("id9", "data point 9", 0, min=0, max=100, step=1),
    numericInput("id10", "data point 10", 0, min=0, max=100, step=1)
    
    ),
  mainPanel(
    
    textOutput("oid1"),
    p("Mean"),
    textOutput("oid2"),
    p("Standard Deviation"),
    p("Are there any data points that are more than 3 sigma further from the mean? ... Check the graph."),
    plotOutput("stabilityCheck")
    
  )
))