# Docker Clang-Format
[![License](http://img.shields.io/:license-apache-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)
[![Build Status](https://travis-ci.org/saschpe/docker-clang-format.svg?branch=master)](https://travis-ci.org/saschpe/docker-clang-format)
[![Docker Pulls](https://img.shields.io/docker/pulls/saschpe/clang-format.svg)](https://hub.docker.com/r/saschpe/clang-format/)
[![Docker Build Status](https://img.shields.io/docker/build/saschpe/clang-format.svg)](https://hub.docker.com/r/saschpe/clang-format/)

Clang-Format Docker container based on Alpine Linux.


## Usage
Invoke the container just like *clang-format* ifself:

    docker run --rm saschpe/clang-format --help

Assuming you want to format all headers and sources in a directory
*src*, a full example might look like this:

    cpp_files=$(find src \( -name *.h -o -name *.cpp \) -exec echo /opt/{} \;)
    docker run \
        --rm \
        --privileged=true \
        --volume ${PWD}:/opt \
        saschpe/clang-format -i ${cpp_files}

Just put this into a script for easier invocation.


## Scripts
These scripts simplify various tasks related to container building and
publishing.

    .
    └─── scripts
        ├── docker
        │   ├── build           Build the container locally
        │   └── run             Run the container locally
        ├── inc.constants
        └── inc.functions


## License

    Copyright 2017 Sascha Peilicke

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
