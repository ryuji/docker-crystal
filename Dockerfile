FROM crystallang/crystal:0.35.0-alpine

RUN apk add --update-cache --no-cache --force-overwrite -X http://dl-cdn.alpinelinux.org/alpine/edge/testing \
        ameba \
        ncurses \
        watchexec
