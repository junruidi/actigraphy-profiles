library(shiny)

#ui.R
# Define UI for random distribution application 
shinyUI(fluidPage(
  
  # Application title
  titlePanel(title = h4("Actigrpahy Profiles Visualization Tool",align="center")),
  
  sidebarLayout(
    sidebarPanel(
      fileInput('file1', 'Upload Acitgraphy Data',
                accept=c('text/csv','text/comma-separated-values,text/plain','.csv')),
      tags$hr(),
      fileInput('file2', 'Upload Flags Data',
                accept=c('text/csv','text/comma-separated-values,text/plain','.csv')),
      bootstrapPage(
        div(style = "display:block",uiOutput("idchoices")),
        div(style = "display:block",uiOutput("daychoices"))
      )
    ),
    mainPanel(
     uiOutput("plot.ui")
    )
  ))
)