library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
        
        # Application title
        titlePanel("Compare your Cars"),
        
        # This app was developed to help people choose the best car for their trip, using mtcars dataset, from [R] 
        
        # Sidebar
        
        sidebarLayout(
                sidebarPanel(
                        helpText("Provide the features of the car that you want"),
                        
                        sliderInput('avg', 'Milage(in Km/L)', min=10, max=40, value=c(10,40), step=1),
                        checkboxGroupInput('cyl', 'Number of cylinders:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)),
                        sliderInput('hp', 'Gross horsepower', min=50, max=340, value=c(50,340), step=10),
                        checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1)),
                        checkboxGroupInput('gear','Gears:',c("Three"=3, "Four"=4, "Five"=5),selected = c(3,4,5)),
                        submitButton("Compare!")
                ),
                
                mainPanel(
                        dataTableOutput('table'))
        )
)
)
