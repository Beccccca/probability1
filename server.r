library(shiny)
library(plotrix)
library(grid)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    
    isolate({
      plot(c(-1.3,1.3),c(-1.3,1.3), type = 'n')
      draw.circle(0,0,1,col="yellow")
      
    })
    
    draw.circle(0,0,input$radius,col=c(3,4))
    
    
  },width = 500,height=500)
})
