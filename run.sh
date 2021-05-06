#!/bin/bash

docker build -t sel4 .

docker run -d \
--mount type=bind,source=$(pwd)/seL4test,target=/root/seL4test \
sel4 /bin/bash

image=`docker ps | grep sel4 | head -2 | tail -1 | awk '{ print $NF }'`

docker exec -it $image bash

