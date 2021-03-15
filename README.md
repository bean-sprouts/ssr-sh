# ssr-sh
## 简介
本项目包含两部分，ssr服务器端和bbr脚本

## ssr服务器端

### 新服务器

对于新建的服务器可以手动执行`init_server.sh`

```shell
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
# 拉取本项目
git clone https://github.com/bean-sprouts/ssr-sh.git && cd ssh-sh
# 
cd ./shadowsocksr && bash ./initcfg.sh && cd ~/ssh-sh/
# 加反斜线才不会提示是否输入yes覆盖
\cp -f ./user-config.json ./shadowsocksr/user-config.json
sh ./start.sh
# sh ./bbr.sh
```

会执行以下操作：

- 关闭防火墙
- 更新yum源为阿里源
- 安装git、lrzsz、vim等工具
- 拉取本项目
- 初始化ssr并修改用户配置文件
- 启动ssr

### 已有服务器



## bbr脚本

```shell
sh bbr.sh
```

脚本有ui界面，根据提示自行选择安装即可
