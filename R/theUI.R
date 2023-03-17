ui <- navbarPage(
  "Biodiversity Sightings",
  tags$head(
    tags$style(
      HTML('body {background-color: #9BCB7B;}'),
      HTML('.leaflet-container { height: 91vh !important; }'))

  ),
  sidebarPanel(
    selectInput("type_input", "Select type:", choices = unique(uioptions$dummytype)),
    uiOutput("species_input"),
    plotOutput("time")
  ),
  mainPanel(
    leafletOutput("map")
  )
)

ui<-theUI("mod1")
server<-function(input,output,session){
   timeServer("mod1")
   mapServer("mod1")
}
shinyApp(ui,server)


