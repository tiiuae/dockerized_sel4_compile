# Dockerized seL4 build

## General

These instructions have been tested with Ubuntu 20.10 desktop host running in VirtualBox and Ubuntu 20.10 desktop running inside Docker container.

## Update local Ubuntu repositories on host
```
host% sudo apt-get -y update
host% sudo apt-get -y upgrade
```

## Install curl command on host
```
host% sudo apt install -y curl
```

## Install repo command on host
```
host% sudo curl https://storage.googleapis.com/git-repo-downloads/repo > /tmp/repo
host% sudo mv /tmp/repo /usr/local/bin
host% sudo chmod +x /usr/local/bin/repo
```

## Install git command on host
```
host% sudo apt install -y git
host% git config --global user.email "you@example.com"
host% git config --global user.name "Your Name"
```

## Make link into right Python binary
```
host% sudo ln -s /usr/bin/python3 /usr/local/bin/python
```

## Download seL4 repository
```
host% mkdir seL4test
host% cd seL4test
host% repo init -u https://github.com/tiiuae/sel4test-manifest.git
host% repo sync
```

## Install Docker
```
host% sudo apt install -y docker docker.io
host% sudo usermod -aG docker $USER
host% reboot
```
