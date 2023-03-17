# Base image
FROM rocker/shiny-verse:4.1.0

# Install system dependencies
RUN apt-get update && apt-get install -y \
  libcurl4-openssl-dev \
  libssl-dev \
  libxml2-dev \
  libgit2-dev

# Install R packages
RUN R -e "install.packages(c('shiny', 'leaflet', 'lubridate', 'ggplot2', 'dplyr'))"

# Copy app files to container
COPY map.csv app.R time.csv uioptions.csv /srv/shiny-server/

# Expose port
EXPOSE 3838

# Start Shiny server
CMD ["R", "-e", "shiny::runApp('/srv/shiny-server/app.R', port = 3838, host = '0.0.0.0')"]