ARG GOLANG_VERSION=1.23.4
ARG ALPINE_VERSION=3.21
ARG UPSTREAM_RELEASE_TAG=v2.3.2
ARG UPSTREAM_COMMIT=19984894d4459ad9eac23c1829b20efb7cf775f0

FROM golang:${GOLANG_VERSION}-alpine${ALPINE_VERSION} AS gobuild
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
