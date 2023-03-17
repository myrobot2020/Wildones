# Load or install the pacman package to manage dependencies
if (!require("pacman")) {
  install.packages("pacman")
  library("pacman")
}

# Load required packages using pacman
pacman::p_load(shiny, leaflet, lubridate, ggplot2, dplyr, usethis, testthat, htmltools)

# Define the Shiny app
wildApp <- function() {

  # Define the UI
  ui <- theUI("mod1")

  # Define the server
  server <- function(input, output, session) {
    # Call the timeServer and mapServer functions defined elsewhere
    timeServer("mod1")
    mapServer("mod1")
  }

  # Run the Shiny app
  shinyApp(ui, server)
}
