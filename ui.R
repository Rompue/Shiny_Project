
shinyUI(
        pageWithSidebar(
                titlePanel("Shiny Project"),
                sidebarPanel(checkboxGroupInput("id1", "Choose spray types you want to compare",
                                           c("Spray A" = "A",
                                             "Spray B" = "B",
                                             "Spray C" = "C",
                                             "Spray D" = "D",
                                             "Spray E" = "E",
                                             "Spray F" = "F")),
                             submitButton(),
                             h4("About The Application"),
                             p("This application is designed to do basic exploratory analysis on InsectSpray dataset. You need to choose the Spray types you want to look at and compare from the mutiple check box,
                               and then a box plot will show on the right side. This plot shows means and quantiles.")
                             ),
                
                 mainPanel(
                         h3('Outcomes'),
                         plotOutput('boxplot')
                    
                 )               
        )
)