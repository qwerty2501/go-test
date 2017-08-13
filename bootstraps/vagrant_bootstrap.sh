#!/bin/sh
test -f /etc/bootstrapped && exit
sudo sh `dirname ${0}`/database_bootstrap.sh test_user pasword1234
sudo sh `dirname ${0}`/api_bootstrap.sh
date > /etc/bootstrapped