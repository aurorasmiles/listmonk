FROM golang:1.23 AS go

FROM node:20 AS node

COPY --from=go /usr/local/go /usr/local/go
ENV GOPATH /go
ENV CGO_ENABLED=0
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

WORKDIR /app
ENTRYPOINT [ "" ]
