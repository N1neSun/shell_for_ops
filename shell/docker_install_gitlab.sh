#!/bin/bash
#author:N1neSun
echo -n "enter hostname(ex: www.baidu.com):"
read hostname

dokcer pull gitlab/gitalb-ce
#mkdir in real host
mkdir /usr/local/gitlab_data
mkdir -p /usr/local/gitlab_data/gitlab/config
mkdir -p /usr/local/gitlab_data/gitlab/logs
mkdir -p /usr/local/gitlab_data/gitlab/data

docker run -d \
--hostname $hostname \
--name gitlab \
--restart always \
-m 1G \
-p 443:443 -p 80:80 -p 2202:22 \
-v /etc/localtime:/etc/localtime:ro \
-v /usr/local/gitlab_data/gitlab/config:/etc/gitlab \
-v /usr/local/gitlab_data/gitlab/logs:/var/log/gitlab \
-v /usr/local/gitlab_data/gitlab/data:/var/opt/gitlab \
gitlab/gitlab-ce