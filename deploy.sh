#!/bin/bash

cd /opt/webapp

git pull

docker build -t minu-veeb .

docker stop webapp || true

docker rm webapp || true

docker run -d -p 8080:80 --name webapp minu-veeb
