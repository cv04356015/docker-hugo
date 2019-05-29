FROM registry.gitlab.com/pages/hugo:latest
MAINTAINER cv04356015@gmail.com

RUN apk add --no-cache npm curl \
    && npm install -g gitlab-letsencrypt \
    && npm install -g hugo-algolia
