#!/bin/bash
# based on the instructions from edk2-platform
set -e
. build_common.sh
# not actually GCC5; it's GCC7 on Ubuntu 18.04.
GCC5_AARCH64_PREFIX=aarch64-linux-gnu- build -s -n 0 -a AARCH64 -t GCC5 -p MI8/MI8.dsc
gzip -c < workspace/Build/MI8/DEBUG_GCC5/FV/MI8_UEFI.fd >uefi.img
cat dipper.dtb >>uefi.img
