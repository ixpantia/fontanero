FROM registry.access.redhat.com/rhel7/rhel-atomic

MAINTAINER "frans@ixpantia.com"

RUN microdnf update
RUN microdnf install gcc gcc-c++ gcc-gfortran --enablerepo=rhel-7-server-rpms
RUN microdnf clean all
RUN microdnf install bison byacc cscope ctags cvs diffstat doxygen --enablerepo=rhel-7-server-rpms
RUN microdnf clean all
RUN microdnf install fontconfig --enablerepo=rhel-7-server-rpms
RUN microdnf clean all
RUN microdnf install flex gettext indent intltool libtool --enablerepo=rhel-7-server-rpms
RUN microdnf clean all
RUN microdnf install patch patchutils rcs swig systemtap  --enablerepo=rhel-7-server-rpms
RUN microdnf clean all
RUN microdnf install libcurl-devel openssl-devel libxml2-devel --enablerepo=rhel-7-server-rpms
RUN microdnf clean all
RUN microdnf install wget --enablerepo=rhel-7-server-rpms
RUN microdnf clean all
RUN wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN rpm -Uvh epel-release-latest-7*.rpm
RUN microdnf update
RUN microdnf install R --enablerepo=epel --enablerepo=rhel-7-server-optional-rpms --enablerepo=rhel-7-server-rpms
RUN microdnf update
RUN microdnf clean all

RUN R -e "install.packages('devtools', repos = 'https://cloud.r-project.org/')"

RUN R -e "devtools::install_version('plumber', version = '0.4.4', repos = 'https://cloud.r-project.org/')"
RUN R -e "devtools::install_version('jsonlite', version = '1.5', repos = 'https://cloud.r-project.org/')"

COPY . /app
WORKDIR /app

EXPOSE 8080
ENTRYPOINT ["Rscript"]
CMD ["arranca.R"]
