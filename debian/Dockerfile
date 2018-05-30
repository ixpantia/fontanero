FROM rocker/r-ver:3.4.4

MAINTAINER "Frans van Dunné" frans@ixpantia.com

RUN apt-get update && apt-get -y install \
    libxml2-dev \
    r-cran-xml \
    libcurl4-openssl-dev \
    libssl-dev

RUN R -e "install.packages('devtools', repos = 'https://cloud.r-project.org/')"

RUN R -e "devtools::install_version('plumber', version = '0.4.2', repos = 'https://cloud.r-project.org/')"
RUN R -e "devtools::install_version('jsonlite', version = '1.5', repos = 'https://cloud.r-project.org/')"

COPY . /app
WORKDIR /app

EXPOSE 8080
ENTRYPOINT ["Rscript"]
CMD ["arranca.R"]
