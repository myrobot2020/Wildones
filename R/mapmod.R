mapServer<-function(id){
  moduleServer(id,function(input,output,session){
    r0 <- reactive({
      map<-map[map$speciesName == input$a, ]
      map<-slice_sample(map,n = 20)
      map
    })

    output$map <- renderLeaflet({
      leaflet() %>%
        addTiles() %>%
        addMarkers(lng = r0()$longitudeDecimal,
                   lat = r0()$latitudeDecimal,
                   popup = paste0("<img src='", r0()$accessURI, "' width='300'>"))
    })
  })
}

# mapmod <- function() {
#   ui <- fluidPage(
#     theUI("map1")
#   )
#   server <- function(input, output, session) {
#     mapServer("map1")
#   }
#   shinyApp(ui, server)
# }
# mapmod()
