# QMK Firmware Build Environment
# Provides the toolchain for compiling QMK firmware for ZSA keyboards.
# The QMK source is mounted into the container at build time.

FROM debian:stable-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    python3 \
    python3-pip \
    build-essential \
    gcc-arm-none-eabi \
    libnewlib-arm-none-eabi \
    binutils-arm-none-eabi \
    dfu-util \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install --break-system-packages qmk appdirs

WORKDIR /root
