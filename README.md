# Wildones
Package for Shiny app using Wildlife data

This readme is for a shiny app built for a wildlife group: https://wild10-ypnxrsf2bq-uc.a.run.app

The task is to build a Shiny app that visualizes observed species on a map using biodiversity data from the Global Biodiversity Information Facility. 
Users should be able to search for species by vernacular and scientific name, view a timeline of species observations and have a sensible default view. 
The app should be decomposed into shinyModules, include unit tests and be deployed to shinyapps.io. 
Optional features include a beautiful UI using CSS and Sass, performance optimization, JavaScript for non-trivial visualizations
and finally deploying to a personal instance on a cloud provider.

Biodiversity Sightings Application:

This repository contains a Shiny application that performs time series visualisation and global mapping of plants,animal,insects,fish,reptile and birds. The application is designed to allow user to select plant,animal,fish etc and then select species from a based on Scientific Name or Vernacular Name. 
The apps contains 5 major components 
1. Time series visualisation with a trend line
2. Leaflet map showing the geolocation of the selected species that allow has a small pop-up picture
3. Species list dynamically rendered from type list selection
4. Portrait image of the species displayed upfront
5. A little joke or fact about each species collated using ChatGPT-4

The Shiny app is deployed on google cloud in a kubernetes cluster running a docker image that has credentials to connect to a Bigquery dataset.
and can be accessed at https://wild10-ypnxrsf2bq-uc.a.run.app

Installation:

1. To run the application locally, you will need to have R/Rstudio, github, rtools, devtools.
2. Simply start a new project in Rstudio and pull gitrepo  myrobot2020/Wildones.
3. Next press ctrl+shift+L to load all packages and files.
4. Then press ctrl+shift+T to run tests ensuring dependencies are available and data is correct.
5. Finally the app can be run using by calling the function wildApp()

About
This Shiny application was created by Nikhil Muthukrishnan. If you have any questions or comments about the application, please e-mail me at nikhil.exec@gmail.com.

Credits

This application was created based on an assignment thats available in the directory.

Morgan Krakow gave me the most well rounded and intersting assignment ever
Mayank told me there'd be light at the end of the tunnel, he gave me hope
Jayprakash gave me time and security
Manasa, gave me peace and kept me relaxed
Manu, kept me disciplined
