# docker-inception-build

Build a docker image inside of docker!

## use case

Your build has dependencies. Your CI tool does not have these available. But... it has **`docker`**!

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
