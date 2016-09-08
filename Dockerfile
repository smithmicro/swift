FROM ubuntu:15.10
MAINTAINER Smith Micro Software, Inc.
LABEL Description="Swift 3 on Ubuntu 15.10"

ENV UBUNTU_VERSION ubuntu15.10
ENV SWIFT_SNAPSHOT swift-DEVELOPMENT-SNAPSHOT-2016-09-07-a
ENV SWIFT_ARCHIVE $SWIFT_SNAPSHOT-$UBUNTU_VERSION.tar.gz

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
RUN wget -nv https://swift.org/builds/development/ubuntu1510/$SWIFT_SNAPSHOT/$SWIFT_ARCHIVE \
  && tar -xzf $SWIFT_ARCHIVE -C / --strip-components 1 \
  && rm $SWIFT_ARCHIVE
