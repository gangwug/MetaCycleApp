library(shiny)
##uploading file
shinyUI(fluidPage(
  titlePanel(h2("Welcome to MetaCycle") ),
  sidebarLayout(
    
    sidebarPanel(
      fluidRow(
        column(6,
               fileInput('file1', label=h5('Choose Data File'),
                         accept=c('text/csv', 
                                  'text/comma-separated-values,text/plain', '.csv')) )
      ),
     fluidRow(
       column(6,
              radioButtons('fstyle', label=h5('fileStyle'),
                   choices=c("csv"='csv', "txt"='txt'),
                   selected='csv', inline=FALSE) ),
       column(6,
              radioButtons('outraw', label=h5('outRawData'),
                           choices=c("true"=TRUE, "false"=FALSE),
                           selected=TRUE, inline=FALSE) )
      ),
     fluidRow(
       column(6,
              textInput("timept", label=h5("timepoints"), value="Header") )
     ),
     fluidRow(
       column(6,
              numericInput("minper", label=h5("minper"), value=20) )
     ),
      fluidRow(
       column(6,
              numericInput("maxper", label=h5("maxper"), value=28) )
     ),
     fluidRow(
       column(6,
              numericInput("arsper", label=h5("ARSdefaultPer"), value=24) )
     ),
     fluidRow(
       column(3,
              checkboxGroupInput("method", label=h5("cycMethod"), 
                                 choices=list( "ARS"= "ARS",
                                               "JTK"="JTK",
                                               "LS"="LS") ) ),
       column(3,
              radioButtons('cmbPva', label=h5('combinePvalue'),
                           choices=c(fisher='fisher', bonferroni='bonferroni'),
                           selected='fisher', inline=FALSE) )
     ),
     br(),
     br(),
     fluidRow(
       column(3,
              actionButton("update", label=h5("Run")) ),
       column(3,
              downloadButton('downloadData', label='Download' ) )
     )
    ),
    
    mainPanel(
      helpText(h4('Step1: upload') ),
      helpText(h5('Please take a look at the input file selected on the left:') ),
      tableOutput('contents'),
      ##the temporaly output value for checking the value during running shiny app
      #textOutput('teptext'),
      br(),
      helpText(h4('Step2: run') ),
      helpText(h5('If the input file is shown as expected, please set parameters on the left and click Run button.') ),
      br(),
      helpText(h4('Step3: download') ),
      helpText(h5('The first six rows of analysis results will be shown as below (If the input file is large, please wait until you see the output results.):') ),
      tableOutput('tabout'),
      helpText(h5('Now you could download the output results by clicking Download button on the left.') )
    )
  )
))
