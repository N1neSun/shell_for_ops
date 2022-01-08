#!/bin/bash
#author:N1neSun

docker pull elasticsearch
docker pull kibana

docker run -d --name myes -p 9201:9200 -p 9301:9300 -p 5601:5601 elasticsearch
docker run -d --name mykibana --net=container:esid kibana