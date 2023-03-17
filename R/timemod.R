timeServer<-function(id){
  moduleServer(id,function(input,output,session){
    s0 <- reactive({
      time<-time[time$speciesName == input$a,]
      time$eventDateconverted<-ymd(time$eventDateconverted)
      time
    })

    output$time<-renderPlot({
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
