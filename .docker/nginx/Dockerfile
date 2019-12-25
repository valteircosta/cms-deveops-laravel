FROM nginx:1.15.0-alpine

ARG UID=1000
ARG GID=1000

RUN apk update && apk add bash
# Del arquivo configuração original
RUN rm /etc/nginx/conf.d/default.conf

# install dockerize
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
  && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
  && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

WORKDIR /var/www

