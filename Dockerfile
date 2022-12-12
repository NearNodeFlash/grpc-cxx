FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    cmake build-essential autoconf libtool pkg-config git \
    && apt-get clean

RUN  git clone --recurse-submodules -b v1.50.0 --depth 1 --shallow-submodules https://github.com/grpc/grpc && \
    cd grpc && \
    mkdir -p cmake/build && \
    cd cmake/build && \
    cmake -D gRPC_INSTALL=ON \
    -D gRPC_BUILD_TESTS=OFF \
    ../.. && \
    make -j 4 && \
    make install && \
    cd ..