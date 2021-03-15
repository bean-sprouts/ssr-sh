# ssr-sh
## 简介
本项目包含两部分，ssr服务器端和bbr脚本

## ssr服务器端

### 新服务器

新服务器可以手动执行`init_server.sh`的内容用于服务器初始化，会执行以下操作：

- 关闭防火墙
- 更新yum源为阿里源
- 安装git、lrzsz、vim等工具
- 拉取本项目

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
# 拉取ssr
# git clone -b manyuser https://github.com/shadowsocksr-backup/shadowsocksr.git
# 拉取本项目,已包含ssr客户端
git clone https://github.com/bean-sprouts/ssr-sh.git && cd ssh-sh
# 初始化
# sh ./init.sh
```

### 修改配置文件`user-config.json`

```shell
{
    ...
    // 端口
    "server_port": 6666,
    ...
    // 密码
    "password": "123456",
    // 加密方法
    "method": "aes-256-cfb",
    // 协议
    "protocol": "auth_aes128_md5",
    ...
     // 混淆
    "obfs": "tls1.2_ticket_auth_compatible",
    ...
}
```

### 初始化

直接执行`init.sh`即可，会执行以下操作：

- 初始化ssr
- 覆盖ssr配置文件
- 启动ssr

```shell
sh init.sh
```

## bbr脚本

```shell
sh bbr.sh
```

脚本有ui界面，根据提示自行选择安装即可
