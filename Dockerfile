FROM alpine

# install docker
RUN apk add --no-cache docker openrc
RUN rc-update add docker boot

# install any other deps
RUN apk add --no-cache curl

VOLUME [ "/build" ]

ENTRYPOINT docker build -t $BUILD_IMAGE /build
