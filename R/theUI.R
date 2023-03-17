theUI <- function(id) {
  navbarPage(
    "Biodiversity Sightings",
    tags$head(
      tags$style(
        HTML('body {background-color: #9BCB7B;}'),
        HTML('.leaflet-container { height: 91vh !important; }')
      )
    ),
    sidebarPanel(
      # Add a select input for selecting the species type, with choices based on the unique values in uioptions$dummytype
      selectInput(NS(id, "type_input"), "Select type:", choices = unique(uioptions$dummytype)),
      # Add a dynamic UI element for selecting the species based on the selected type
      uiOutput(NS(id, "species_input")),
      # Add a plot output for displaying a time series plot
      plotOutput(NS(id, "time"))
    ),
    mainPanel(
      # Add a leaflet output for displaying the map with markers
      leafletOutput("map")
    )
  )
}
