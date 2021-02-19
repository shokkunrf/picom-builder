FROM python:3.9.1-slim-buster

RUN apt-get update && \
    apt-get upgrade -y
RUN apt install -y \
        wget \
        libxext-dev \
        libxcb1-dev \
        libxcb-damage0-dev \
        libxcb-xfixes0-dev \
        libxcb-shape0-dev \
        libxcb-render-util0-dev \
        libxcb-render0-dev \
        libxcb-randr0-dev \
        libxcb-composite0-dev \
        libxcb-image0-dev \
        libxcb-present-dev \
        libxcb-xinerama0-dev \
        libxcb-glx0-dev \
        libpixman-1-dev \
        libdbus-1-dev \
        libconfig-dev \
        libgl1-mesa-dev \
        libpcre2-dev \
        libpcre3-dev \
        libevdev-dev \
        uthash-dev \
        libev-dev \
        libx11-xcb-dev

RUN pip install --upgrade pip && \
    pip install --upgrade setuptools &&\
    pip install meson ninja
