FROM alpine:latest
MAINTAINER Hsien Ching Lo <cv04356015@gmail.com>

RUN apk add --no-cache hugo npm curl \
&& npm install -g hugo-algolia

RUN mkdir /usr/share/blog
WORKDIR /usr/share/blog

EXPOSE 1313

ONBUILD ADD site/ /usr/share/blog
ONBUILD RUN hugo -d /usr/share/nginx/html/

CMD hugo server
