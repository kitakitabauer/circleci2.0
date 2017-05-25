FROM golang:1.8.2-alpine

MAINTAINER kitakitabauer

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

COPY . $GOPATH/src/github.com/kitakitabauer/circleci2.0

WORKDIR $GOPATH/src/github.com/kitakitabauer/circleci2.0

RUN ./script/build.sh && \
    cp ./circleci2.0 /usr/local/bin

EXPOSE 8080

CMD ["/usr/local/bin/circleci2.0"]

