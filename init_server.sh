#!/bin/bash
# 关闭防火墙
systemctl stop firewalld.service
systemctl disable firewalld.service
# 更新yum
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo_bak
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
yum makecache
# 安装git
yum install -y git lrzsz vim
# 拉取ssr
# git clone -b manyuser https://github.com/shadowsocksr-backup/shadowsocksr.git
# 拉取本项目,已包含ssr客户端
git clone https://github.com/bean-sprouts/ssr-sh.git && cd ssh-sh
# 初始化
# sh ./init.sh
