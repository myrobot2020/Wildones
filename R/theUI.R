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
      selectInput(NS(id,"type_input"), "Select type:", choices = unique(uioptions$dummytype)),
      uiOutput(NS(id,"species_input")),
      plotOutput(NS(id,"time"))
    ),
    mainPanel(
      leafletOutput("map")
    )
  )
}

# ui<-theUI("mod1")
# server<-function(input,output,session){
#    timeServer("mod1")
#    mapServer("mod1")
# }
# shinyApp(ui,server)
#

