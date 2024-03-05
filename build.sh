#! /bin/sh

CGO_ENABLED=0 go build
docker build . -t ablocker/webdav
# docker run -d --name webdav -p 8080:8080 ablocker/webdav:latest
