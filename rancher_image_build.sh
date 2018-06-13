#!/bin/sh
#build rancher image by changed code . change all path before use.   mingbai

echo "begin"

cd /root/go/src/github.com/rancher/rancher/
go build -i -tags k8s -ldflags "-X main.VERSION=v200" -o bin/rancher  && echo "build code succeed" || exit 1

echo "copy file and start build image"
cp /root/go/src/github.com/rancher/rancher/bin/rancher /root/docker/rancher/files

docker stop $(docker ps -aq)
docker rmi -f mingbai/rancher
docker build -t mingbai/rancher /root/docker/rancher/

echo "start run image"  
docker run -it -p 80:80 -p 443:443 mingbai/rancher /bin/sh 
