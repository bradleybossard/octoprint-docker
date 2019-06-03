# OctoPrint-docker [![Build Status](https://travis-ci.org/OctoPrint/docker.svg?branch=master)](https://travis-ci.org/OctoPrint/docker)

This repository contains everything you need to run [Octoprint](https://github.com/foosel/OctoPrint) in a docker environment.

# Getting started

```
git clone https://github.com/OctoPrint/docker.git octoprint-docker && cd octoprint-docker

# search for you 3D printer serial port (usually it's /dev/ttyUSB0 or /dev/ttyACM0)
ls /dev | grep tty

// edit the docker-compose file to set your 3D printer serial port
vi docker-compose.yml

docker-compose up -d
```

You can then go to http://localhost:5000

You can display the log using `docker-compose logs -f`

## Without docker-compose
```
docker run -d -v ./config:/home/octoprint/.octoprint --device /dev/ttyACM0:/dev/ttyACM0 -p 5000:5000 --name octoprint octoprint/octoprint
```

# Additional tools

## FFMPEG

Octoprint allows you to make timelapses using an IP webcam and ffmpeg. It is installed in `/opt/ffmpeg`

## Cura Engine

Octoprint allows you to import .STL files and slice them directly in the application. For this you need to upload the profiles that you want to use (you can export them from Cura). Cura Engine is installed in `/opt/cura/CuraEngine`.

# Future Work

### Automated Octoprint ARM build on Dockerhub

Currently, the Travis CI build for these images is broken and need to be built on the ARM device itself.  The blog post describes how to create an ARM build on x86 that can be executed on Dockerhub.

[Building ARM containers on any x86 machine, even DockerHub](https://www.balena.io/blog/building-arm-containers-on-any-x86-machine-even-dockerhub/)


### Automated install of plugins

In reviewing some of the other forks of this project, there is some room for improvement

[Forks · OctoPrint/docker](https://github.com/OctoPrint/docker/network/members)

Specifically this one that appears to automate the process of various plugin installs

[docker-octoprint/Dockerfile at master · krobertson/docker-octoprint](https://github.com/krobertson/docker-octoprint/blob/master/Dockerfile)
