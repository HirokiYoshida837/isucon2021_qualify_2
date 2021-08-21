#!/bin/bash

set -e

# nginx のログを削除
echo ":: CLEAR LOGS       ====>"
sudo truncate -s 0 -c /var/log/nginx/access.log
sudo truncate -s 0 -c /var/log/nginx/access_ltsv.log

# 各種サービスの再起動
echo
echo ":: RESTART SERVICES ====>"
sudo systemctl restart mysql
sudo systemctl restart isucondition.go.service
sudo systemctl restart nginx

# mock stop
sudo systemctl restart jiaapi-mock.service



