# Overview
Swift 3 Trunk Development builds

# Docker Hub
The image is available on Docker Hub as [`smithmicro/swift`](https://hub.docker.com/r/smithmicro/swift/) with the following tags:

  * `latest`, `0908`, `3` ([Dockerfile](https://github.com/smithmicro/swift/blob/master/Dockerfile)) swift-3.0-GM-CANDIDATE
  * `0907` swift-DEVELOPMENT-SNAPSHOT-2016-09-07-a
  * `0906` swift-DEVELOPMENT-SNAPSHOT-2016-09-06-a
  * `0905` swift-DEVELOPMENT-SNAPSHOT-2016-09-05-a
  * `0904` swift-DEVELOPMENT-SNAPSHOT-2016-09-04-a
  * `0903` swift-DEVELOPMENT-SNAPSHOT-2016-09-03-a
  * `0902` swift-DEVELOPMENT-SNAPSHOT-2016-09-02-a
  * `0901` swift-DEVELOPMENT-SNAPSHOT-2016-09-01-a
  * `0831` swift-DEVELOPMENT-SNAPSHOT-2016-08-31-a
  * `0830` swift-DEVELOPMENT-SNAPSHOT-2016-08-30-a
  * `0829` swift-DEVELOPMENT-SNAPSHOT-2016-08-29-a
  * `0826` swift-DEVELOPMENT-SNAPSHOT-2016-08-26-a
  * `0823` swift-DEVELOPMENT-SNAPSHOT-2016-08-23-a

# Usage
This image is used as a base image for a Swift 3 application.  An example Dockerfile would be:

```
FROM smithmicro/swift:latest
ADD helloworld.swift ./
RUN swiftc helloworld.swift
CMD ./helloworld
```

You can also jump into the Swift REPL like this:
```
$ docker run -it --privileged smithmicro/swift swift
```
