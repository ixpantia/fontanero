FROM registry.centos.org/centos/centos7-atomic

MAINTAINER "frans@ixpantia.com"

RUN microdnf update
RUN microdnf install gcc gcc-c++ gcc-gfortran
RUN microdnf clean all
RUN microdnf install bison byacc cscope ctags cvs diffstat doxygen
RUN microdnf clean all
RUN microdnf install fontconfig
RUN microdnf clean all
RUN microdnf install flex gettext indent intltool libtool
RUN microdnf clean all
RUN microdnf install patch patchutils rcs swig systemtap
RUN microdnf clean all
RUN microdnf install libcurl-devel openssl-devel libxml2-devel
RUN microdnf clean all
RUN microdnf install epel-release
RUN microdnf install R

RUN R -e "install.packages('devtools', repos = 'https://cloud.r-project.org/')"

RUN R -e "devtools::install_version('plumber', version = '0.4.4', repos = 'https://cloud.r-project.org/')"
RUN R -e "devtools::install_version('jsonlite', version = '1.5', repos = 'https://cloud.r-project.org/')"
RUN R -e "devtools::install_version('dplyr', version = '0.7.5', repos = 'https://cloud.r-project.org/')"

COPY . /app
WORKDIR /app

EXPOSE 8080
ENTRYPOINT ["Rscript"]
CMD ["arranca.R"]
