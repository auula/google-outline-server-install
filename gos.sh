#!/bin/bash

## get console input agrs
echo "输入1执行安装Google BBR加速算法"
echo "输入2执行安装Google Outline Server"
read NUM

if [ $NUM -eq 1 ]
then
    wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh
fi


if [ $NUM -eq 2 ]
then
    systemctl stop firewalld
    curl https://get.docker.com/ | sh
    sudo usermod -aG docker root
    sudo bash -c "$(wget -qO- https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh)"
fi
