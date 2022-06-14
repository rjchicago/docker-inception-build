FROM alpine

# install docker
RUN apk add --update curl docker openrc
RUN rc-update add docker boot

# install any other deps...
# RUN apk add...

WORKDIR /inception
COPY ./inception /inception
RUN chmod +x /inception/entrypoint.sh

ENTRYPOINT [ "sh", "entrypoint.sh" ]