FROM alpine:3.14.2

# Install requirements
RUN apk --no-cache add make alpine-sdk zlib-dev libaio-dev linux-headers libaio coreutils

# Install fio @ 3.28
RUN git clone https://github.com/axboe/fio --branch=fio-3.28 --depth=1 && \
    cd fio && \
    ./configure && \
    make -j`nproc` && \
    make install && \
    cd ../ && \
    rm -rf fio

# Remove build requirements
RUN apk --no-cache del make alpine-sdk zlib-dev libaio-dev linux-headers coreutils

# Copy in the entrypoint
COPY ./3.28-alpine-3.14.2/docker-entrypoint.sh /

ENTRYPOINT [ "/docker-entrypont.sh" ]

CMD [ "fio" ]

LABEL org.opencontainers.image.authors="visheshc14@gmail.com"
LABEL version="3.28-alpine-3.14.2"
LABEL description="dbench - dockerized fio tests"
