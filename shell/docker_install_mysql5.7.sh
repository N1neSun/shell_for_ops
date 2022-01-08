#!/bin/bash
#author:N1neSun

echo -n "enter mysql password:"
read password

docker pull centos/mysql-57-centos7

docker run -d -p 3306:3306 --name mymysql -e MYSQL_ROOT_PASSWORD=$password centos/mysql-57-centos7
