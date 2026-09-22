ARG GOLANG_VERSION=1.27.1
ARG ALPINE_VERSION=3.24
ARG UPSTREAM_RELEASE_TAG=v2.4.0
ARG UPSTREAM_COMMIT=1a3712544653db1ca4d12bb52779be80ea152c79
# pinned rather than derived from $(date): the build date is a property of the
# upstream release, not of the day the image happens to be rebuilt
ARG UPSTREAM_BUILD_DATE="July 2026"
# upstream v2.4.0 pins golang.org/x/crypto v0.54.0, which Trivy flags
# (CVE-2026-56854 high, CVE-2026-56855, CVE-2026-78662); bump it at build time
ARG XCRYPTO_VERSION=v0.57.0

FROM golang:${GOLANG_VERSION}-alpine${ALPINE_VERSION} AS gobuild
ARG GOLANG_VERSION
ARG ALPINE_VERSION
ARG UPSTREAM_RELEASE_TAG
ARG UPSTREAM_COMMIT
ARG UPSTREAM_BUILD_DATE
ARG XCRYPTO_VERSION

WORKDIR /tmp

RUN apk add --no-cache gcc build-base curl tar && \
    mkdir release && \
    curl -L "https://github.com/gotify/cli/archive/refs/tags/${UPSTREAM_RELEASE_TAG}.tar.gz" | tar xvz --strip 1 -C ./release

WORKDIR /tmp/release

RUN go get golang.org/x/crypto@${XCRYPTO_VERSION}

RUN go build -ldflags="-X 'main.Version=$UPSTREAM_RELEASE_TAG' -X 'main.Commit=$UPSTREAM_COMMIT' -X 'main.BuildDate=$UPSTREAM_BUILD_DATE'" -a -o gotify

FROM alpine:${ALPINE_VERSION}

ARG GOLANG_VERSION
ARG ALPINE_VERSION

RUN adduser -S gotify

COPY --from=gobuild /tmp/release/gotify /usr/local/bin/gotify

USER gotify

WORKDIR /home/gotify

ENTRYPOINT ["/usr/local/bin/gotify"]
