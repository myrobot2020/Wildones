if (!require("pacman")) {
  install.packages("pacman")
  library("pacman")}
pacman::p_load(shiny, leaflet,lubridate, ggplot2, dplyr,usethis,testthat,htmltools)
#data("uioptions","map","time")
wildApp<-function(){
  ui<-theUI("mod1")

    server<-function(input,output,session){
    timeServer("mod1")
    mapServer("mod1")
  }
  shinyApp(ui,server)
}
