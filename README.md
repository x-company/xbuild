# xbuild - A easy to use Framework for your Installation Needs of Docker Base Images

[![xbuild-version](https://img.shields.io/badge/Version-0.1.6-brightgreen.svg?style=flat)](https://github.com/x-company/xbuild)
[![xbuild-status](https://img.shields.io/badge/Status-development%201-brightgreen.svg?style=flat)](https://github.com/x-company/xbuild/releases)
[![xbuild-build](https://img.shields.io/badge/Builds-6-brightgreen.svg?style=flat)](https://github.com/x-company/xbuild)
[![CircleCI](https://circleci.com/gh/x-company/xbuild/tree/master.svg?style=svg)](https://circleci.com/gh/x-company/xbuild/tree/master)

## What is xBuild

*xbuild* brings Tools to easily build new Docker Base Images. The Main Goal of this Tools, is to build secure and small Docker Base Images, which can used as Base Image for your Application Containers.

*xbuild* also initialize *xinit*. *xinit* is used to control your installed Services, like *mysql*, *nginx*, *httpd*, *redis* a.s.o.. *xinit* is a Node Cli App and can be found on <https://www.npmjs.com.>

### Which Commands are currently in use

- *build* to build runit Services
- *cleanup* to cleanup the Build Process
- *configure* to configure runit Services
- *copy* to copy Files to your Docker Image
- *debug* to enable or disable the Debug Mode
- *execute* to execute Commands in your Docker Image
- *header* to print an Group Header in to the Output of the Build Process
- *install* to install new Software and Packages with apt
- *loadvars* to load all persisted Environment Variables
- *log* to log Informations to the Build Process
- *mkfolders* to create needed Folders and ensures the Folder Security
- *prepare* to prepare the Build Process
- *printvars* to print the persisted Environment Vars
- *savevars* to save all Environment Vars
- *setvar* to set a Environment Var

### Which Folder Structure will created

``` bash
/etc/xinit                  # Main Folder for the xinit System
/etc/xinit/env.d            # Home of persisted Variables
/etc/xinit/health.d         # Home for Healthcare Scripts for Services
/etc/xinit/service.d        # Home of the Service Control Scripts
/usr/local/include/xbuild   # Home of the xbuild Framework
/var/local/xbuild           # Home for dynamic Data of xbuild Framework
/var/local/xinit            # Home for dynamic Data of xinit System
```

## What is xinit

*xinit* is a fork of the great [Phusion Base Image](http://phusion.github.io/baseimage-docker) to init in a secure Way Services in Docker Container.

### What is a *xinit* Service

Normally a Service, e.g. *nginx*, *mysql* a.s.o will installed by the Docker *Run* Command. This Services will for example later run as root. Which will be a main cause of further Problems in Docker Application Containers. Also needs a Service like *mysql* other Services like *cron*, *logrotate* a.s.o.. This Services will be started by Systems *init-v*. But this is not available in an Docker Container.

*xinit* will take care to run your Service as a specific User and that other Services which will your Service depends on also be started.

*xinit* in combination with *xbuild* delievers the needed Tools to configure correct *xinit* Services.

## How to use it

Create a new Dockerfile with follow Content

```dockerfile
FROM xcompany/xbuild:latest

COPY ./build.sh /

RUN /build.sh

CMD [<Your Entry Point>]
```

Now create a `build.sh` in the same Location as your Dockerfile and use the xBuild Commands in it. An Example could be found in `examples/default/build.sh`

> [!NOTE]
> Don't forget to add Execution Permission to the `build.sh`, e.g. `chmod +x build.sh`

Last but not least build your Dockerfile with `docker build --tag <yourimage> .` That's it!
