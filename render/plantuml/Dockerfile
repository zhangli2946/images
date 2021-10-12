FROM openjdk:8-alpine as base

ENV LANG en_US.UTF-8

ARG PLANTUML_VERSION
ENV PLANTUML_VERSION=$PLANTUML_VERSION
ENV PLANTUML_DL_URL="https://downloads.sourceforge.net/project/plantuml/$PLANTUML_VERSION/plantuml.$PLANTUML_VERSION.jar"

RUN sed -ie s/dl-cdn.alpinelinux.org/mirror.tuna.tsinghua.edu.cn/g  /etc/apk/repositories
RUN apk add --no-cache graphviz wget ca-certificates ttf-dejavu fontconfig
RUN wget "${PLANTUML_DL_URL}" -O plantuml.jar

