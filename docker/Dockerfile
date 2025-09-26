# Base image Alpine (tiny)
FROM alpine:3.20

LABEL maintainer="tiagomsrs2012@gmail.com"

# Compilation mode (can be overridden at build/run time)
ENV COMPILATION_MODE=unittest

# Install build tools and dependencies
RUN apk add --no-cache \
    build-base \
    #g++ \
    cmake \
    #make \
    #ninja \
    #git \
    #vim \
    openssl-dev \
    curl-dev
    # common Boost components (add more if needed)
    #boost-dev \
    #boost-system \
    #boost-thread \
    #boost-filesystem \
    #boost-program_options \
    #boost-random

# Working directory
WORKDIR /IPR

# Copy source code into container
COPY CMakeLists.txt README.md script_build_random_generator.sh ./
COPY libraries/ libraries/
COPY src/ src/
COPY unittest/ unittest/

# Example: run build script (customize to your workflow)
# CMD ["/IPR/tools/build_vsomeip.sh"]
# Default command runs an interactive shell
# Example with conditional compilation mode
# CMD ["/bin/sh", "-c", \
#   "if [ \"$COMPILATION_MODE\" = \"all\" ]; then /IPR/test/unittest/script_build_unittest_random_generator.sh; \
#    elif [ \"$COMPILATION_MODE\" = \"unittest\" ]; then /IPR/test/unittest/script_build_unittest_random_generator.sh; fi"]
