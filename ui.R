
shinyUI(fluidPage(
  
  # Application title
  titlePanel(title = h4("Actigrpahy Profiles Visualization Tool",align="center")),
  
  sidebarLayout(
    sidebarPanel(
      bootstrapPage(
        div(style = "display:block",uiOutput("idchoices")),
        div(style = "display:block",uiOutput("daychoices"))
      ),
      actionButton("goplot", "Plot"),
      actionButton("reset", "Clear")
    ),
    mainPanel(
     uiOutput("plot.ui")
    )
  ))
)