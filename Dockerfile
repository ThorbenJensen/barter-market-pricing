# Rstudio (release date 2017-05-01)
FROM rocker/rstudio-stable:3.4.0 

# move source files to container (read only)
ADD . /home/rstudio

RUN \
  # set package date to release of 3.4.0
  R -e "options(repos='https://mran.microsoft.com/snapshot/2017-05-01')" \
  # install custom packages
  && R -e "install.packages('ggplot2')"

