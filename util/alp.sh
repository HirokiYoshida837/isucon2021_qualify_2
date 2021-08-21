#!/bin/bash

set -e

# nginx のログを削除
echo ":: GENERATING ALP LOGS       ====>"

sudo cat /var/log/nginx/access_ltsv.log | alp ltsv -m "/api/isu/[0-9a-zA-Z]+","/api/condition/[0-9a-zA-Z]+","/api/condition/[0-9a-zA-Z]+/condition","/isu/[0-9a-zA-Z]+" --sort avg -r

