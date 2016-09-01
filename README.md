# Overview
Swift 3 Trunk Development builds

# Docker Hub
The image is available on Docker Hub as [`smithmicro/swift`](https://hub.docker.com/r/smithmicro/swift/) with the following tags:

  * `latest`, `0831` ([Dockerfile](https://github.com/smithmicro/swift/blob/master/Dockerfile)) swift-DEVELOPMENT-SNAPSHOT-2016-08-31-a
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
