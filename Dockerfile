FROM osgeo/gdal:ubuntu-full-latest
MAINTAINER Joachim Lengacher "info@singletrail-map.eu"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get clean

RUN apt-get install -y python-pip
RUN pip install gdal2mbtiles

RUN apt-get update -y && apt-get install -y software-properties-common
RUN add-apt-repository ppa:ubuntugis/ppa && apt-get update
RUN apt-get install -y gdal-bin \
                       python-gdal \
                       libgdal-dev

#RUN pip install --global-option=build_ext --global-option=--gdal-config=/usr/bin/gdal-config --global-option=--include-dirs=/usr/include/gdal/ GDAL==$(GDAL_VERSION)

RUN apt-get install -y libvips \
                       libvips-dev \
                       libtiff5 \
                       optipng \
                       pngquant

ENTRYPOINT ["/usr/local/bin/gdal2mbtiles"]