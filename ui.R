shinyUI(
  pageWithSidebar(
    headerPanel("Motor Trend Car Road Tests - Mileage analysis"),
    sidebarPanel(
      radioButtons("corrType", "Correlation parameters:",
                   c("wt + factor(am)" = "simple",
                     "wt * factor(am)" = "complex",
                     "wt * factor(am) + qsec" = "final"),
      selected = "simple")
      ),
    mainPanel(
      h3("How to use this Shiny App:"),
      p("In the mtcars dataset provided with R Studio, we are trying to assess regression model
        that will fit the best and help us understand which parameters have the most impact on
        the mileage."),
      p("In this Shiny application, you can select the three models that was studying and see
        the residuals for each one. By clicking on each one on the left side, you can see the
        impact on the residuals and hopefully agree with my conclusions."),
      h4("The linear regression formula used is: "),
      verbatimTextOutput("linearRegFormula"),
      plotOutput('plotResid')
    )
  )
)