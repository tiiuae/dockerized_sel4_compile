# Dockerized seL4 build

## General

These instructions have been tested with Ubuntu 20.10 desktop host running in VirtualBox and Ubuntu 20.10 desktop guest running inside Docker container.

## Update local Ubuntu repositories on host
```
host% sudo apt-get -y update
host% sudo apt-get -y upgrade
```

## Install and configure git on host
```
host% sudo apt -y install git
host% git config --global user.email "you@example.com"
host% git config --global user.name "Your Name"
```

## Install and configure docker on host
```
host% sudo apt -y install docker docker.io
host% sudo usermod -aG docker $USER
host% reboot
```

## Download repository and build docker container
```
host% cd ~
host% git clone https://github.com/tiiuae/dockerized_sel4_compile.git
host% cd dockerized_sel4_compile
host% docker build -t tiiuae/build .
```

## Install repo command and initialize repository
```
host% sudo apt -y install repo
host% repo init -u https://github.com/tiiuae/sel4test-manifest.git
host% repo sync
```

## Enter docker container
```
host% ./enter_container.sh
```

## Build RPI4 image inside guest
```
guest% ./build_rpi4_vm_minimal.sh
```
