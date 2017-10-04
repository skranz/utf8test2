FROM rocker/shiny

# Install markdown package
RUN R -e "install.packages(c('markdown'), repos='https://cran.rstudio.com/')"