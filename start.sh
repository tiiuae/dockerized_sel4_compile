#!/bin/bash

pip3 install Jinja2
pip3 install future
pip3 install ply
pip3 install pyyaml
pip3 install pyfdt

ln -sf /usr/bin/python3 /usr/bin/python
ln -sf /usr/bin/aarch64-linux-gnu-objcopy /usr/bin/objcopy

passwd root << EOF
ubuntu
ubuntu
EOF

service ssh start

cd ~/seL4test
mkdir build-arm
cd build-arm
../init-build.sh -DPLATFORM=bcm2711
ninja

sleep 60000

