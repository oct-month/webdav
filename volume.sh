#! /bin/sh

docker volume rm `docker volume ls -q | sed ":a;N;s/\n/ /g;ta"`

