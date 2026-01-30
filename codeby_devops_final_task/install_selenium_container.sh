#!/bin/bash

set -e

docker run \
	--name selenium \
	-p 4444:4444 \
	--shm-size="2g" \
	--restart always \
	-d selenium/standalone-chrome:144.0-20260120
