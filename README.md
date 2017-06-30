# Docker instructions

## Build container

docker build -t test .

## Run container

docker run --rm -p 8787:8787 test

## Access container

In browser, access http://localhost:8787/
username: rstudio
password: rstudio

## Run script

Use Rstudio to run script.
By convention, set working directory to 'src' folder: setwd('src')
