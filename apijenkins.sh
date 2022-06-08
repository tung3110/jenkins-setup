#!/bin/sh
docker container stop $(docker container ls -q --filter ancestor=tungnh2022/jenkins-setup:latest)
docker pull tungnh2022/jenkins-setup:latest
docker run -d -p 3000:3000 tungnh2022/jenkins-setup:latest
