# Working on ShinyApp
library(shiny)

# Define UI
ui <- fluidPage( #the fluidPage() function makes the interface elements responsive
  titlePanel("My Star Wars App"),
  
  sidebarLayout(
    sidebarPanel(
      h3("Installation"),
      p("Shiny is available on CRAN, so you can install it in the usual way from your R console:"),
      br(),
      p(code("install.packages('shiny')", style="color:red")),
      br(),
      p(img(src="rstudio.png", height=70, width=200)),
      span("Shiny is a product of", span("RStudio", style="color:blue"))
  
    ),
    
    
    mainPanel(
      h1("Introducing Shiny"),
      p("Shiny is a new package from RStudio that makes it incredibly easy to build interactive simple web application with R. "),
      p("For an Introduction and live examples, visit the", 
        a("Shiny homepage", href="https://shiny.rstudio.com")),
      
      h2("Features"),
      tags$ul(
        tags$li("Build useful web applications with only a few lines of code - no JavaScript required."),
        tags$li("Shiny applications are automatically live the same way that spread sheets are live.")),
      
      )
  )
  
)

# Define server logic and callback function

server <- function(input, output) {

  
  
}

# run the application
shinyApp(ui=ui, server=server)