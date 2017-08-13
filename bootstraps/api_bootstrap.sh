#!/bin/sh

#git
sudo yum install -y git

#go
sudo curl https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz | sudo tar zx -C /usr/local/
sudo sed -i -e '$ a export GOROOT=/usr/local/go' /etc/profile
sudo sed -i -e '$ a export GOPATH=/q2/go' /etc/profile
sudo sed -i -e '$ a export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' /etc/profile
source /etc/profile
go get github.com/codegangsta/gin

#nginx
sudo cp `dirname ${0}`/nginx.repo /etc/yum.repos.d/nginx.repo
sudo yum install -y nginx
sudo cp `dirname ${0}`/cert.crt /etc/nginx/conf.d/cert.crt
sudo cp `dirname ${0}`/cert.key /etc/nginx/conf.d/cert.key
sudo cp `dirname ${0}`/nginx-default.conf /etc/nginx/conf.d/default.conf
sudo service nginx start