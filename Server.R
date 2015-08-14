data(InsectSprays)
library(lattice)
shinyServer(
        function(input, output){
                output$boxplot <- renderPlot({
                        subdata <- subset(InsectSprays[InsectSprays$spray == input$id1, ])
                        
                        bwplot(subdata$count ~ subdata$spray, data = subdata)
               
                })
                }
        
)