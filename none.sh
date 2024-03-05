#! /bin/sh

docker rmi `docker images | grep \<none\> | awk '{print $3}' | sed ":a;N;s/\n/ /g;ta"`

