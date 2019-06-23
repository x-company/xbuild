# xbuild - A easy to use Framework for your Installation Needs of Docker Base Images

| Type | States |
|---|---|
| [Source](https://github.com/x-company/xbuild "View Source") | [![xbuild-version](https://img.shields.io/badge/Version-0.4.0-brightgreen.svg?style=flat)](https://github.com/x-company/xbuild) [![xbuild-status](https://img.shields.io/badge/Status-development%201-brightgreen.svg?style=flat)](https://github.com/x-company/xbuild/releases) [![xbuild-build](https://img.shields.io/badge/Builds-27-brightgreen.svg?style=flat)](https://github.com/x-company/xbuild) |
| [Docker Image](https://cloud.docker.com/u/xcompany/repository/docker/xcompany/xbuild "Show Image on Docker Hub") | [![](https://images.microbadger.com/badges/image/xcompany/xbuild.svg)](https://microbadger.com/images/xcompany/xbuild "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/xcompany/xbuild.svg)](https://microbadger.com/images/xcompany/xbuild "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/commit/xcompany/xbuild.svg)](https://microbadger.com/images/xcompany/xbuild "Get your own commit badge on microbadger.com") [![](https://images.microbadger.com/badges/license/xcompany/xbuild.svg)](https://microbadger.com/images/xcompany/xbuild "Get your own license badge on microbadger.com") |
| [Known Vulnerabilities](https://snyk.io//test/github/x-company/xbuild "View Security Status") |[![Known Vulnerabilities](https://snyk.io//test/github/x-company/xbuild/badge.svg?targetFile=package.json)](https://snyk.io//test/github/x-company/xbuild?targetFile=package.json) |
| [Continuous Integration](https://circleci.com/gh/x-company/xbuild/tree/master "View Build Status") | [![CircleCI](https://circleci.com/gh/x-company/xbuild/tree/master.svg?style=svg)](https://circleci.com/gh/x-company/xbuild/tree/master) |

## What is xBuild

*xbuild* brings Tools to easily build new Docker Base Images. The Main Goal of this Tools, is to build secure and small Docker Base Images, which can used as Base Image for your Application Containers. The Main Idea comes from the great [Phusion Base Image](http://phusion.github.io/baseimage-docker) which will shows how to init in a secure Way Services in a Docker Container.

The *Phusion Base Image* will use *runit* as supervisor. But *runit* is for us not so secure and have a lot of CVEs. So we decide to use *s6 supervisor*. *s6* is a great replacement for *systemd*. *s6* will control your installed Services, like *mysql*, *nginx*, *httpd*, *redis* a.s.o.. Further Informations for *s6* can be found [here](https://skarnet.org/software/).

Normally a Service, e.g. *nginx*, *mysql* a.s.o will installed by the Docker *Run* Command. This Services will for example later run as root. Which will be a main cause of further Problems in Docker Application Containers. Also needs a Service like *mysql* other Services like *cron*, *logrotate* a.s.o.. This Services will be started by Systems *init-v*. But this is not available in an Docker Container.

*xbuild* will support you to build your Image as *s6* Service.

### Which Commands/Tools are currently in use

#### Commands and Subcommands

- *xb-build* Main Command to build the Image and Services. This command calls other Subcommands
- *xb-buildsvc* Build your Services and prepares it for *s6*
- *xb-cleanup* Cleanup the Image. Removes all Packages which was installed by *xb-prepare* and deletes temporary Files
- *xb-configure* Configure the Image, like Timezone, locals a.s.o.
- *xb-harden* Hardening the Image
- *xb-healthcheck* Peform all Healthchecks
- *xb-prepare* Prepare the Mirrors/Packagesource and installs needed Packages, which will removed later by *xb-cleanup*

#### Tools

- *xb-env* Saves/Load Environment Variables
- *xb-header* Writes an Log Header
- *xb-install* Install Packages
- *xb-log* Log a Message
- *xb-rmrf* Removes recursivley Files
- *xb-test* A Helper to execute Unit Tests. Unit Tests must be located in Folder `/tests`

### Which Folder Structure will created

``` bash
/etc/cont-finish.d        # Scripts which will called when Container is shutting down
/etc/cont-init.d          # Scripts which will called  when Container is started
/etc/fix-attrs.d          # Script to fix Folder and File Permissions
/etc/services.d           # Home of your Services
/etc/socklog.rules        # Define here specific Log Rules
/etc/xbuild               # Main Folder for the xbuild System
/etc/xbuild/apt           # Place here a custom sources.list to use custom Repositories
/etc/xbuild/env.d         # xb-env save/load Environment Variables from this location
/etc/xbuild/health.d      # Home for Healthcare Scripts of Services
/var/local/xbuild         # Home for dynamic Data of xbuild Framework
```

## How to use it

For your Development Needs we create a CLI Tool called *xbuild-mgr*. This tool helps you to create easily Services for your own Docker Images. *xbuild-mgr* is a NodeJS Tool which can installed with `npm install -g xbuild-mgr`. To create a Basic Layout call `xbuild layout create`. To add an Service call `xbuild service create <servicename>`

## Development Dependencies

We strongly suggest to use a Linux Distribution to develop for this Project.

For Windows you have to use Visual Studio Code with the suggested Extensions. To start Development open this Project in a DevContainer (*F1 -> Remote Containers: Open Folder in Container*).

- Docker 18.x
- NodeJS 8.x or above
- Yarn - `npm install -g yarn`
- bats - `apt install bats`
- Visual Studio Code v1.34 to use the Dev Container and Code Snippets

After you have installed this Tools open Visual Studio Code and install all recommended Extensions. Please notice also our [Contributing](CONTRIBUTING.md). Thanks.

## QandA - Questions and Answers

### Message: 'debconf: delaying package configuration, since apt-utils is not installed'

This Message could ignored. After *apt-utils* is installed this warning will be obsolete.
