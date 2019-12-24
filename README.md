# gdal2mbtiles Docker Image

Run [gdal2mbtiles](https://github.com/ecometrica/gdal2mbtiles) in [Docker](https://www.docker.com/).

The Docker image can be found at [DockerHub](https://hub.docker.com/repository/docker/joeakeem/gdal2mbtiles).

For instructions how to use gdal2mbtiles run:

```bash
docker run --rm  joeakeem/gdal2mbtiles --help
```

E.g. to convert the file `hillshade.tif` in the current working directy into a `hillshade.mbtiles` that
includes zoom levels 8 to 16 and doesn't fill missing areas with empty tiles you could run

```bash
docker run --rm -v $(pwd):/data/ joeakeem/gdal2mbtiles --name hillshade --min-resolution 8 --max-resolution 16 --no-fill-borders /data/hillshade.tif /data/hillshade.mbtiles
```