#!/usr/bash
# 初始化ssr
cd ./shadowsocksr && bash ./initcfg.sh && cd ~/ssh-sh/
# 覆盖ssr配置，加反斜线才不会提示是否输入yes覆盖
\cp -f ./user-config.json ./shadowsocksr/user-config.json
sh ./start.sh
# sh ./bbr.sh
