# Overview
Swift 3 Release and GM Candidate builds

# Docker Hub
The image is available on Docker Hub as [`smithmicro/swift`](https://hub.docker.com/r/smithmicro/swift/) with the following tags:

  * `3.0.1`, `3.0`, `3`, `latest`, ([Dockerfile](https://github.com/smithmicro/swift/blob/master/Dockerfile)) swift-3.0.1-RELEASE
  * `1025` swift-3.0.1-GM-CANDIDATE
  * `3.0.0` swift-3.0-RELEASE
  * `0908` swift-3.0-GM-CANDIDATE

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
