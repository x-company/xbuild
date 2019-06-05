# xbuild - A Build System for Docker Base Images



[![xbuild-version](https://img.shields.io/badge/Version-0.1.0-brightgreen.svg?style=flat)](https://github.com/x-company/xbuild)
[![xbuild-status](https://img.shields.io/badge/Status-development%201-brightgreen.svg?style=flat)](https://github.com/x-company/xbuild/releases)
[![xbuild-build](https://img.shields.io/badge/Builds-6-brightgreen.svg?style=flat)](https://github.com/x-company/xbuild)
[![CircleCI](https://circleci.com/gh/x-company/xbuild/tree/master.svg?style=svg)](https://circleci.com/gh/x-company/xbuild/tree/master)

## What is xBuild?

xBuild brings Tools to easily build new Docker Base Images. The Main Goal of this Tools, is to build secure and small Docker Base Images, which can used as Base Image for your Application Container.

### Which Commands are currently delivered?

- *xbuild-cleanup* to cleanup the Build Process
- *xbuild-configure* to configure runit Services
- *xbuild-copy* to copy Files to your Docker Image
- *xbuild-execute* to execute Commands in your Docker Image
- *xbuild-header* to print an Group Header in to the Output of the Build Process
- *xbuild-install* to install new Software and Packages with apt
- *xbuild-log* to log Informations to the Build Process
- *xbuild-prepare* to prepare the Build Process
- *xbuild* the Main Command to link all other Commands

## How to use it

Create a new Dockerfile with follow Content

```dockerfile
FROM xcompany/xbuild:latest

COPY ./build.sh /

RUN /build.sh

CMD [<Your Entry Point>]
```

Now create a `build.sh` in the same Location as your Dockerfile and use the xBuild Commands in it.

> [!NOTE]
> Don't forget to add Execution Permission to the `build.sh`, e.g. `chmod +x build.sh`

Last but not least build your Dockerfile with `docker build --tag <yourimage> .` That's it!
