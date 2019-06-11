FROM debian:stretch-slim AS prod

ARG XBUILD_BUILD_DATE
ARG XBUILD_VCS_REF
ARG XBUILD_VERSION
ARG XBUILD_VENDOR="IT Solutions Roland Breitschaft"
ARG XBUILD_VENDOR_MAIL="info@x-company.de"
ARG XBUILD_DESCRIPTION="A easy to use Framework for your Installation Needs of Docker Base Images"

LABEL   de.x-company.build-date=$XBUILD_BUILD_DATE \
        de.x-company.name="xbuild" \
        de.x-company.description=$XBUILD_DESCRIPTION \
        de.x-company.url="https://www.x-company.de/" \
        de.x-company.vcs-ref=$XBUILD_VCS_REF \
        de.x-company.vcs-url="e.g. https://github.com/xcompany/xbuild" \
        de.x-company.vendor=$XBUILD_VENDOR \
        de.x-company.version=$XBUILD_VERSION \
        de.x-company.schema-version="1.0" \
        de.x-company.dockerfile="1.0" \
        de.x-company.license="MIT" \
        maintainer=$XBUILD_VENDOR_MAIL \
        vendor=$XBUILD_VENDOR \
        description=$XBUILD_DESCRIPTION \
        version=$XBUILD_VERSION

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
