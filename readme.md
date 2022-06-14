# docker-inception-build

build an image inside of docker!

## use case

your build environment has `docker` but is missing additional dependencies required.

## demo

See [docker-compose.yml](./docker-compose.yml) and [Dockerfile](./Dockerfile)

``` sh
# build outer/inner images
docker-compose up --build
```

``` sh
# verify images locally
docker image ls | grep docker-inception-build
```
