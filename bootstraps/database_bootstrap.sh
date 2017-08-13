#!/bin/sh
sudo cp `dirname ${0}`/mariadb.repo /etc/yum.repos.d/mariadb.repo

sudo yum groupinstall -y mariadb*

sudo systemctl enable mariadb.service

sudo systemctl start mariadb.service

sudo mysql  -e"create user ${1} identified by '${2}';"
sudo mysql  -e"grant all on *.* to ${1};"
sudo mysql  -e"create database test_db;"