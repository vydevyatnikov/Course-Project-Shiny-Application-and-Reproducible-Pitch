library(shiny)

shinyUI(fluidPage(
    titlePanel("Old Faithful Geyser Data"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("beta0", "Zero Beta Coefficient:", min = 1, max = 10, value = 3),
            sliderInput("beta1", "Beta-one Coefficient:", min = -1, max = 1, value = 0.5, step = 0.1),
            tableOutput("sum_up")
        ),
        mainPanel(plotOutput("plot1"))
    )
))
help(sliderInput)
