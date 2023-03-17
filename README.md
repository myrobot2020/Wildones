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

Installation
To run the application locally, you will need to have R/Rstudio, github, rtools, devtools.
Simply start a new project in Rstudio and pull from myrobot2020/Wildones.
Next press ctrl+shift+L to load all packages and files.
Then press ctrl+shift+T to run tests ensuring dependencies are available and data is correct.
Finally the apps is run using the function wildApp()

The pacman package will download and load necessary packages for the application.
The application runs on 3 datasets for UI, timeseries and mapping.



Once the application is running, you will see a [insert brief description of the application interface here]. You can [insert brief description of how to use the application here].

About
This Shiny application was created by [insert your name and contact information here]. If you have any questions or comments about the application, please [insert preferred method of contact here].

Credits
This application was created using the [insert packages or resources used here].

