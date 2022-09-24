library(shiny)

# define ui
ui <-  fluidPage(
  titlePanel("CensusVis"),
  sidebarLayout(
    
    sidebarPanel(
      p("Create demographic maps with information from the 2010 US Census."),
      selectInput("variable",
                  "Choose a variable to display",
                  choices = list("Percent White" = 1,
                                 "percent Black" = 2,
                                 "Percent Hispanic" = 3,
                                 "Percent Asian" = 4),
                  selected = "Percent White"),
      sliderInput("interest", 
                  h3("Range of interest"),
                  min = 0, max = 100, value=c(0, 100)),
      
      ),
    mainPanel(
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(), 
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      
      fluidRow(
        column(6,
               selectInput("variable",
                           "Choose a variable to display",
                           choices = list("Percent White" = 1,
                                          "percent Black" = 2,
                                          "Percent Hispanic" = 3,
                                          "Percent Asian" = 4),
                           selected = "Percent White")),
        
        column(6,
               selectInput("variable",
                           "Choose a variable to display",
                           choices = list("Percent White" = 1,
                                          "percent Black" = 2,
                                          "Percent Hispanic" = 3,
                                          "Percent Asian" = 4),
                           selected = "Percent White"))
        
        
      )
    )
    

  )

)
  

# define server and call back

server <- function(input, output) {
  
  
}




# launch app
shinyApp(ui=ui, server=server)
