FROM debian:stretch-slim

RUN set -x \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y build-essential subversion libncurses5-dev zlib1g-dev gawk gcc-multilib flex git-core gettext libssl-dev \
    && apt-get install -y unzip wget file time python \
    && useradd build

USER build
