# gRPC C++ Docker Image

This repository builds a container that includes everything necessary to build a C++ gRPC program.
The reason for this is that there are no packages for C++ gRPC, which means it must be built from
source. That build can take 15-20 minutes, which is not ideal. In order to work around this, we
turn to a container.

After some research, there does not appear to be an up to date containers that provide this
functionality. gRPC has some [docker image](https://hub.docker.com/u/grpc)s, but they are outdated
and deprecated. See the Readme [here](https://github.com/grpc/grpc-docker-library) and also this
[issue](https://github.com/grpc/grpc-docker-library/issues/75) that has not been responded to.
