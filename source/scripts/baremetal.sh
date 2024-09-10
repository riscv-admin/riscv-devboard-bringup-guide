#!/bin/bash

set -e

# get prerequisites
wget https://github.com/raspberrypi/pico-sdk-tools/releases/download/v2.0.0-2/pico-sdk-tools-2.0.0-x86_64-lin.tar.gz
wget https://github.com/raspberrypi/pico-sdk-tools/releases/download/v2.0.0-2/riscv-toolchain-14-x86_64-lin.tar.gz
wget https://github.com/raspberrypi/pico-sdk-tools/releases/download/v2.0.0-2/picotool-2.0.0-x86_64-lin.tar.gz
# /get prerequisites

# set up env
export PICO_SDK_PATH=~/example_sdk/sdk/2.0.0/
export PICO_TOOLCHAIN_PATH=~/example_sdk/toolchain/13_2_Rel1
export picotool_DIR=~/example_sdk/picotool/2.0.0/picotool
# /set up env

# clone
git clone https://github.com/disdi/bare-metal-riscv
cd bare-metal-riscv
# /clone

# build
make PICO_BOARD=sparkfun_promicro_rp2350 PICO_SDK_PATH=~/.pico-sdk/  build
make flash
# /build


