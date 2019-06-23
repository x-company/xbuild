
FROM debian:stretch-slim

ARG XBUILD_BUILD_DATE="2019-06-23T21:03:15Z"
ARG XBUILD_VCS_REF="4ca0f36"
ARG XBUILD_VERSION="0.3.0"
ARG XBUILD_IMAGE_NAME="xcompany/xbuild"
ARG XBUILD_IMAGE_DESCRIPTION="Your Image Description"
ARG XBUILD_VENDOR="IT Solutions Roland Breitschaft"
ARG XBUILD_VENDOR_URL="https://www.x-company.de"
ARG XBUILD_VENDOR_MAIL="info@x-company.de"

LABEL  de.x-company.build-date=$XBUILD_BUILD_DATE \
       de.x-company.name=$XBUILD_IMAGE_NAME \
       de.x-company.description=$XBUILD_IMAGE_DESCRIPTION \
       de.x-company.url=$XBUILD_VENDOR_URL \
       de.x-company.vcs-ref=$XBUILD_VCS_REF \
       de.x-company.vcs-url="https://github.com/xcompany/xbuild" \
       de.x-company.vendor=$XBUILD_VENDOR \
       de.x-company.version=$XBUILD_VERSION \
       de.x-company.schema-version="1.0" \
       de.x-company.license="MIT" \
       maintainer=$XBUILD_VENDOR_MAIL \
       vendor=$XBUILD_VENDOR \
       description=$XBUILD_IMAGE_DESCRIPTION \
       version=$XBUILD_VERSION

COPY   ./src/xcompany/xbuild/rootfs/ /
COPY   ./src/xcompany/xbuild/build/ /build/

WORKDIR /
