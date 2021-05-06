#!/bin/bash

sudo rm -rf seL4test
mkdir seL4test
cd seL4test
repo init -u https://github.com/tiiuae/sel4test-manifest.git
repo sync

