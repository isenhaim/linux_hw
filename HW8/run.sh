#!/bin/bash
docker network create -d bridge flask
docker run -d --rm --hostname flaskapp --name flaskapp -v $(pwd)/socket:/opt/socket isenhaim/flask:v1
docker run -d --rm --name nginx -v $(pwd)/socket:/socket -v $(pwd)/nginx.conf:/etc/nginx/conf.d/nginx.conf -p 80:80 nginx:alpine
