# QMK Firmware Build Environment
# Based on qmk/qmk_base_container for stable toolchain.

FROM qmk/qmk_base_container:latest

RUN python3 -m pip install --break-system-packages qmk appdirs

WORKDIR /root
