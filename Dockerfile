FROM crystallang/crystal:0.35.1-alpine

RUN apk add --update-cache --no-cache --force-overwrite -X http://dl-cdn.alpinelinux.org/alpine/edge/testing \
        ncurses \
        watchexec

RUN git clone --depth=1 -b v0.13.0 https://github.com/crystal-ameba/ameba.git /tmp/ameba \
 && cd /tmp/ameba \
 && CRFLAGS='--production' make install \
 && strip -s /usr/local/bin/ameba \
 && rm -rf /root/.cache /tmp/*
