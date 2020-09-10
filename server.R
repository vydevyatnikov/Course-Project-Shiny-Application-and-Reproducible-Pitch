library(shiny)

shinyServer(function(input, output){
    set.seed(12345)
    x <- rnorm(100, 5, 2)
    y <- 3 + 0.5 * x + rnorm(100)
    model <- lm(y ~ x)
    output$plot1 <- renderPlot({
        plot(x = x, y = y, main = "Regression Line")
        lines(x = x, y = input$beta0 + input$beta1 * x, lwd = 2, col = "blue")
    })
})