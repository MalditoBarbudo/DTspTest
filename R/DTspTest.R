#' @export
DTspTest <- function() {

  # ui
  ui <- shiny::fluidPage(
    DT::DTOutput('iris_table')
  )

  # server
  server <- function(input, output, session) {

    output$iris_table <- DT::renderDT({
      DT::datatable(iris)
    })
  }

  res <- shiny::shinyApp(ui, server)
  return(res)

}
