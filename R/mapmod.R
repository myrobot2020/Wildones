mapServer <- function(id) {
  moduleServer(id, function(input, output, session) {

    # Define a reactive expression that filters the map data based on the selected species and samples 20 observations
    r0 <- reactive({
      map <- map[map$speciesName == input$a, ]
      map <- slice_sample(map, n = 20)
      map
    })

    # Render the leaflet map with markers for the selected species
    output$map <- renderLeaflet({
      leaflet() %>%
        addTiles() %>%
        addMarkers(
          lng = r0()$longitudeDecimal,
          lat = r0()$latitudeDecimal,
          popup = paste0("<img src='", r0()$accessURI, "' width='300'>")
        )
    })
  })
}
