shinyServer(function(input, output) {
  

  
  output$idchoices = renderUI({
    if(is.null(act)){return()}
    selectInput("ID", label = "ID", choices = unique(act$ID))
  })
  output$daychoices = renderUI({
    if(is.null(act)){return()}
    selectInput("Dates", label = "Dates", choices = act$Date,multiple = T)
  })
  
  plotCount <- reactive({
    as.numeric(length(input$Dates))
  })
  
  plotHeight <- reactive(250 * plotCount())      
  
  output$plot <- renderPlot({
    if(is.null(act)){return()}
    plot_profile(act = act , flag = flag,
                 id = input$ID, dates = input$Dates)
  })
  
  output$plot.ui <- renderUI({
    plotOutput("plot", height = plotHeight())
  })
})