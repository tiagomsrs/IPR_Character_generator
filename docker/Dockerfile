# Base image Alpine (tiny)
FROM alpine:3.20

LABEL maintainer="tiagomsrs2012@gmail.com"

# Compilation mode (can be overridden at build/run time)
ENV COMPILATION_MODE=unittest
ENV LD_LIBRARY_PATH=/usr/local/lib

# Install build tools and dependencies
RUN apk add --no-cache \
    build-base \
    cmake \
    openssl-dev \
    pkgconf \
    curl-dev

# Working directory
WORKDIR /IPR

# Copy source code into container
COPY ServerApp ServerApp/
COPY libraries libraries/

RUN cd /IPR/libraries && \ 
    ./script_build_libraries.sh

RUN cd /IPR/ServerApp && \ 
    ./script_build_random_generator.sh
