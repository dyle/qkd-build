FROM ubuntu:focal

LABEL authors="Oliver Maurhart, Stefan Petscharnig" \
      version="0.1.0"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
        build-essential \
        g++ gcc \
        libboost-all-dev \
        libssl-dev \
        uuid-dev \
        cmake \
        libssl-dev \
        libgmp3-dev \
        libzmq3-dev \
        libdbus-1-dev \
        qtbase5-dev qtbase5-dev-tools qdbus-qt5 \
        doxygen \
        texlive-latex-base texlive-latex-extra texlive-font-utils \
        dbus-x11 \
        libcap2-bin \
        python3 \
        locales locales-all dbus x11-apps \
        lsb vim git tmux bash-completion tree htop net-tools \
        && rm -rf /var/lib/apt/lists/*

ENV DISPLAY :0

RUN locale-gen --no-purge en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

