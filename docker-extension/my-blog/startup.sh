#!/bin/bash
set -e

#因为要等待mysql用户和权限设置完成
echo '等待mysql.....'

sleep 3

echo '开始启动项目.....'
java -jar /app.jar --spring.profiles.active=docker