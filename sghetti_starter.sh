#!/usr/bin/env bash
# Sets up a new Vagrant Ubuntu for Holberton School purposes

sudo apt-get -y update
sudo apt-get -y upgrade

#Git - 1
sudo apt-get install -y git

#Emacs - 206
sudo apt-get install -y emacs

#Betty - 212
git clone https://github.com/holbertonschool/Betty.git
sudo ./Betty/install.sh
echo '
#!/bin/bash
# Simply a wrapper script to keep you from having to use betty-style
# and betty-doc separately on every item.
# Originally by Tim Britton (@wintermanc3r), multiargument added by
# Larry Madeo (@hillmonkey)

BIN_PATH="/usr/local/bin"
BETTY_STYLE="betty-style"
BETTY_DOC="betty-doc"

if [ "$#" = "0" ]; then
    echo "No arguments passed."
    exit 1
fi

for argument in "$@" ; do
    echo -e "\n========== $argument =========="
    ${BIN_PATH}/${BETTY_STYLE} "$argument"
    ${BIN_PATH}/${BETTY_DOC} "$argument"
done' | sudo tee /Betty/betty
chmod a+x /Betty/betty
sudo mv /Betty/betty /bin/

#Pep8 - 231
sudo apt-get install -y python3-pip
sudo pip3 install -y -Iv pep8==1.7.0

#Shellcheck - 251
sudo apt-get install -y shellcheck

#node10 - 303
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

#Semistandard - 303
sudo npm install -y semistandard --global

#MySQL - 272
echo 'deb http://repo.mysql.com/apt/ubuntu/ trusty mysql-5.7-dmr' | sudo tee -a /etc/apt/sources.list
sudo apt-get install -y mysql-server-5.7

#MySQLdb - 283
sudo apt-get install -y python3-dev
sudo apt-get install -y libmysqlclient-dev
sudo apt-get install -y zlib1g-dev
sudo pip3 install -y mysqlclient==1.3.10

#SQLAlchemy - 283
sudo pip3 install -y SQLAlchemy==1.2.5

#PuppetLint - 292
sudo apt-get install -y ruby
sudo gem install -y puppet-lint -v 2.1.1

#W3C Validator - 268
git clone https://github.com/holbertonschool/W3C-Validator.git

#Fabric - 288
sudo pip3 uninstall -y Fabric
sudo apt-get install -y libffi-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y build-essential
sudo apt-get install -y python3.4-dev
sudo apt-get install -y libpython3-dev
sudo pip3 install -y pyparsing
sudo pip3 install -y appdirs
sudo pip3 install -y setuptools==40.1.0
sudo pip3 install -y cryptography==2.8
sudo pip3 install -y bcrypt==3.1.7
sudo pip3 install -y PyNaCl==1.3.0
sudo pip3 install -y Fabric3==1.14.post1


#Clone Repositories
#Prompt for Github info
