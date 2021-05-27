#! /bin/sh

set -e

CAMKES_VM_APP=vm_cross_connector
PLATFORM=rpi4

TARGET=${PLATFORM}_${CAMKES_VM_APP}

rm -rf ${TARGET}
./init-build.sh -B ${TARGET} -DAARCH64=1 -DPLATFORM=${PLATFORM} -DCAMKES_VM_APP=${CAMKES_VM_APP} -DCROSS_COMPILER_PREFIX=aarch64-linux-gnu-
cd ${TARGET}
ninja

echo "Here are your binaries in ${TARGET}/images: "
ls -l ./images

