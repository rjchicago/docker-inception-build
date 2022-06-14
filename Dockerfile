FROM alpine

# install docker
RUN apk add --update curl docker openrc
RUN rc-update add docker boot

# install any other deps...
# RUN apk add...

WORKDIR /inner
COPY ./inner /inner

ENTRYPOINT docker build -t $INNER_IMAGE .