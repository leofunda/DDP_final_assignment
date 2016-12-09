library("shiny")

shinyServer(
  
  function(input, output){
    
    
    ## evaluating the MEAN of the data points read
    mediaAritmetica <- reactive({mean(c(as.numeric(input$id1), as.numeric(input$id2),
                      as.numeric(input$id3), as.numeric(input$id4),
                      as.numeric(input$id5), as.numeric(input$id6),
                      as.numeric(input$id7), as.numeric(input$id8),
                      as.numeric(input$id9), as.numeric(input$id10)))})
   
    ## evaluating the STANDARD DEVIATION of the data points read
    deviazioneStandard <- reactive({sd(c(as.numeric(input$id1), as.numeric(input$id2),
                                        as.numeric(input$id3), as.numeric(input$id4),
                                        as.numeric(input$id5), as.numeric(input$id6),
                                        as.numeric(input$id7), as.numeric(input$id8),
                                        as.numeric(input$id9), as.numeric(input$id10)))})
    
    
    ## send back the MEAN as output
    output$oid1 <- renderText({mediaAritmetica()})
    
    ## send back the STANDARD DEVIATION as output
    output$oid2 <- renderText({deviazioneStandard()})
    
    
    output$stabilityCheck <- renderPlot({
      plot(c(1,2,3,4,5,6,7,8,9,10),
            c(as.numeric(input$id1), as.numeric(input$id2),
            as.numeric(input$id3), as.numeric(input$id4),
            as.numeric(input$id5), as.numeric(input$id6),
            as.numeric(input$id7), as.numeric(input$id8),
            as.numeric(input$id9), as.numeric(input$id10)),
           xlab=" ", ylab=" ", ylim=c(-50,150)
           )
      abline(h=mediaAritmetica(), col="green")
      abline(h=(mediaAritmetica()+3*deviazioneStandard()), col="red")
      abline(h=(mediaAritmetica()-3*deviazioneStandard()), col="red")
      
    })
    
  }
)