#!/bin/bash
docker run -tid --privileged --rm --name=sdn-labs -e DISPLAY=$DISPLAY sszwaczyk/docker-sdn-labs
