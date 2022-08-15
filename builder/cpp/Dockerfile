FROM alpine:3.16

RUN echo http://mirrors.ustc.edu.cn/alpine/v3.16/main > /etc/apk/repositories
RUN echo http://mirrors.ustc.edu.cn/alpine/v3.16/community >> /etc/apk/repositories

RUN apk add --update --no-cache make gcc g++ musl-dev binutils autoconf automake libtool pkgconfig check-dev file patch tmux vim bash
RUN apk add --update --no-cache zlib-static zlib lz4-static lz4
RUN apk add --update --no-cache zstd-static zstd 
RUN apk add --update --no-cache openssl-libs-static openssl-dev
RUN apk add --update --no-cache gdbm-dev protoc protobuf-dev
RUN apk add --update --no-cache cyrus-sasl-static cyrus-sasl cyrus-sasl-scram cyrus-sasl-gssapiv2 cyrus-sasl-digestmd5
RUN cd /tmp                                                                              \
    && wget https://github.com/edenhill/librdkafka/archive/refs/tags/v1.8.2-POST2.tar.gz \
    && tar zxvf v1.8.2-POST2.tar.gz && mv librdkafka-1.8.2-POST2/ librdkafka-1.8.2       \
    && cd librdkafka-1.8.2 && ./configure --disable-gssapi && make