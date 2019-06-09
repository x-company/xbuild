############################################
# Global Base Image with the xBuild System
FROM debian:stretch-slim AS prod

LABEL maintainer="info@x-company.de" \
    vendor="IT Solutions Roland Breitschaft" \
    description="A easy to use Framework for your Installation Needs of Docker Base Images" \
    version="0.1.0"

# Copy xbuild Files to root
COPY ./src/ /

CMD [ "cat", "/var/local/xbuild/README.txt" ]

################################################################
# Global Base Image with the xBuild System for the Dev Container
FROM prod AS devcontainer

LABEL maintainer="info@x-company.de" \
    vendor="IT Solutions Roland Breitschaft" \
    description="A easy to use Framework for your Installation Needs of Docker Base Images" \
    version="0.1.0"

COPY ./.devcontainer/build.sh /

RUN /build.sh
