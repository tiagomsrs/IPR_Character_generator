# Base image Alpine (tiny)
FROM alpine:3.20

LABEL maintainer="tiagomsrs2012@gmail.com"

# Compilation mode (can be overridden at build/run time)
ENV COMPILATION_MODE=unittest

# Install build tools and dependencies
RUN apk add --no-cache \
    build-base \
    cmake \
    openssl-dev \
    curl-dev

# Working directory
WORKDIR /IPR

# Copy source code into container
COPY CMakeLists.txt script_build_random_generator.sh ./
COPY libraries/ libraries/
COPY src/ src/
COPY unittest/ unittest/
