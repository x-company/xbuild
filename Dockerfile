############################################
# Global Base Image with the xBuild System
FROM debian:stretch-slim AS prod

LABEL maintainer="info@x-company.de" \
    vendor="IT Solutions Roland Breitschaft" \
    description="A Base Image with the xBuild System" \
    version="0.1.0"

# Copy xbuild Files to root
COPY ./src/ /

############################################
# Global Base Image with the xBuild System for Development
FROM prod AS dev

LABEL maintainer="info@x-company.de" \
    vendor="IT Solutions Roland Breitschaft" \
    description="A Base Image for Development of xinit and xbuild" \
    version="0.1.0"

COPY ./.build/install.bats.sh /

RUN /install.bats.sh

RUN xbuild

WORKDIR /code
