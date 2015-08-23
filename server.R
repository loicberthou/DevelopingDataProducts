library(shiny)
library(ggplot2)
library(datasets)

set.seed(20150822)

data("mtcars")

shinyServer(
  function(input, output) {

    output$linearRegFormula <- renderText({
      if(input$corrType=="simple") {
        "lm(mpg ~ wt + factor(am), data=mtcars)"
      }
      else if(input$corrType=="complex") {
        "lm(mpg ~ wt * factor(am), data=mtcars)"
      }
      else if(input$corrType=="final") {
        "lm(mpg ~ wt * factor(am) + qsec, data=mtcars)"
      }
    })
    output$plotResid <- renderPlot({
      if(input$corrType=="simple") {
        fit <- lm(mpg ~ wt + factor(am), data=mtcars)
      }
      else if(input$corrType=="complex") {
        fit <- lm(mpg ~ wt * factor(am), data=mtcars)
      }
      else if(input$corrType=="final") {
        fit <- lm(mpg ~ wt * factor(am) + qsec, data=mtcars)
      }
      par(mfrow=c(2,2))
      plot(fit)
      par(mfrow=c(1,1))
    })
  }
)