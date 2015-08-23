shinyUI(
  pageWithSidebar(
    headerPanel("MPG / Parameters"),
    sidebarPanel(
      textInput(inputId="text1", label = "Input text 1"),
      textInput(inputId="text2", label = "Input text 2")
    ),
    mainPanel(
      p("Output Text 1"), textOutput("text1"),
      p("Output Text 2"), textOutput("text2")
    )
  )
)