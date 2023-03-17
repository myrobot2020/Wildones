timeServer <- function(id) {
  moduleServer(id, function(input, output, session) {
    # Create a reactive expression that filters the time data for the selected species and converts the event date to a date object
    s0 <- reactive({
      time <- time[time$speciesName == input$a,]
      time$eventDateconverted <- ymd(time$eventDateconverted)
      time
    })

    # Render a ggplot time series plot based on the filtered data
    output$time <- renderPlot({
      ggplot(data = s0(), aes(x = eventDateconverted, y = individualCount)) +
        geom_line() +
        geom_smooth(method = "lm", se = FALSE) +
        scale_x_date(date_breaks = "1 year", date_labels = "%Y") +
        xlab("Monthly Count") +
        ylab("Time") +
        theme(axis.title.x = element_text(color = "blue", face = "bold"),
              axis.title.y = element_text(color = "blue", face = "bold"),
              panel.background = element_rect(fill = "#9BCB7B"))
    })
  })
}
