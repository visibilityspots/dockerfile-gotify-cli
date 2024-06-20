ARG GOLANG_VERSION=1.22.4
ARG ALPINE_VERSION=3.20
ARG UPSTREAM_RELEASE_TAG=v2.2.3
ARG UPSTREAM_COMMIT=bbbd6e6638c00881c4a410256ea5f4511f063f5c

FROM golang:${GOLANG_VERSION}-alpine${ALPINE_VERSION} as gobuild
ARG GOLANG_VERSION
ARG ALPINE_VERSION
ARG UPSTREAM_RELEASE_TAG
ARG UPSTREAM_COMMIT

WORKDIR /tmp

RUN apk add --no-cache gcc build-base curl tar && \
    mkdir release && \
    curl -L "https://github.com/gotify/cli/archive/refs/tags/${UPSTREAM_RELEASE_TAG}.tar.gz" | tar xvz --strip 1 -C ./release

WORKDIR /tmp/release

RUN go build -ldflags="-X 'main.Version=$UPSTREAM_RELEASE_TAG' -X 'main.Commit=$UPSTREAM_COMMIT' -X 'main.BuildDate=$(date +%B\ %Y)'" -a -o gotify

FROM alpine:${ALPINE_VERSION}

ARG GOLANG_VERSION
ARG ALPINE_VERSION

RUN adduser -S gotify

COPY --from=gobuild /tmp/release/gotify /usr/local/bin/gotify

USER gotify

WORKDIR /home/gotify

ENTRYPOINT ["/usr/local/bin/gotify"]
