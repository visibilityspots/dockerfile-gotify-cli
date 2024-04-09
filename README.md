# Gotify-CLO

[![trivy](https://github.com/visibilityspots/dockerfile-gotify-cli/actions/workflows/trivy.yml/badge.svg)](https://github.com/visibilityspots/dockerfile-gotify-cli/actions/workflows/trivy.yml)
[![docker-hub-description](https://github.com/visibilityspots/dockerfile-gotify-cli/actions/workflows/docker-hub-description.yml/badge.svg)](https://github.com/visibilityspots/dockerfile-gotify-cli/actions/workflows/docker-hub-description.yml)
[![build status](https://github.com/visibilityspots/dockerfile-gotify-cli/actions/workflows/main.yaml/badge.svg)](https://github.com/visibilityspots/dockerfile-gotify-cli/actions/workflows/main.yaml)
[![gitHub release](https://img.shields.io/github/v/release/visibilityspots/dockerfile-gotify-cli)](https://github.com/visibilityspots/dockerfile-gotify-cli/releases)
[![docker image size](https://img.shields.io/docker/image-size/visibilityspots/gotify-cli/latest)](https://hub.docker.com/r/visibilityspots/gotify-cli)
[![docker pulls](https://img.shields.io/docker/pulls/visibilityspots/gotify-cli.svg)](https://hub.docker.com/r/visibilityspots/gotify-cli/)
[![license](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

a docker container which runs the [gotify-cli](https://github.com/gotify/cli)

## run

```
$ docker run --name gotify-cli --rm visibilityspots/gotify-cli:latest help
```

## build

Build against pinned upstream release
```
$ docker build -t visibilityspots/gotify-cli:latest .
```

### buildx

```
$ docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
$ docker buildx build -t visibilityspots/gotify-cli:latest --platform linux/amd64,linux/arm/v6,linux/arm/v7 --push .
```

### dgoss

I wrote some tests in a goss.yaml file which can be executed by [dgoss](https://github.com/aelsabbahy/goss/tree/master/extras/dgoss) to test the created image

```
$ dgoss run --entrypoint='' visibilityspots/gotify-cli:dev sleep 5                                                                                                    ✔ 
INFO: Starting docker container
INFO: Container ID: fcab7a6a
INFO: Sleeping for 0.2
INFO: Container health
INFO: Running Tests
User: gotify: exists: matches expectation: [true]
Command: gotify --version: exit-status: matches expectation: [0]
Command: gotify --version: stdout: matches expectation: [Version:   v2.2.3 Commit:    bbbd6e6638c00881c4a410256ea5f4511f063f5c BuildDate: April 2024]


Total Duration: 0.007s
Count: 3, Failed: 0, Skipped: 0
INFO: Deleting container
```
### act

using [act](https://github.com/nektos/act#overview----) for local testing of the written github actions makes my life and commit history a lot easier;

```
$ act -l
Stage  Job ID  Job name  Workflow name           Workflow file               Events                    
0      update  update    docker-hub-description  docker-hub-description.yml  push
0      test    test      CI                      main.yaml                   push
0      scan    scan      trivy                   trivy.yml                   push,pull_request,schedule
1      deploy  deploy    CI                      main.yaml                   push

$ act -j test
[CI/test] 🚀  Start image=catthehacker/ubuntu:act-latest
.
.
.
[CI/test]   ✅  Success - Main Execute Goss tests
[CI/test] 🏁  Job succeeded
```

## License

Distributed under the [MIT license](https://github.com/visibilityspots/dockerfile-gotify-cli/blob/master/LICENSE)
