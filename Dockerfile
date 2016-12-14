FROM ubuntu:16.04
MAINTAINER Smith Micro Software, Inc.
LABEL Description="Swift 3 on Ubuntu 16.04"

ENV UBUNTU_VERSION ubuntu16.04
ENV SWIFT_SNAPSHOT swift-3.0.2-RELEASE
ENV SWIFT_ARCHIVE $SWIFT_SNAPSHOT-$UBUNTU_VERSION.tar.gz
ENV SWIFT_PATH builds/swift-3.0.2-release/ubuntu1604/$SWIFT_SNAPSHOT

# Swift Prerequisites
RUN apt-get update && apt-get install -y \
  build-essential \
  clang \
  git \
  libcurl4-openssl-dev \
  libicu-dev \
  libpython2.7 \
  libxml2 \
  uuid-dev \
  wget \
  && rm -rf /var/lib/apt/lists/*

# Swift Install into /usr via "-C / --strip-components 1"
RUN wget -nv https://swift.org/$SWIFT_PATH/$SWIFT_ARCHIVE \
  && tar -xzf $SWIFT_ARCHIVE -C / --strip-components 1 \
  && rm $SWIFT_ARCHIVE
