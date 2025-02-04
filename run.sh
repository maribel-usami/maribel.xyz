#!/bin/bash

# 构建 Docker 镜像
docker build -t my-hugo-site .

# 检查是否已有容器在运行，若有，则停止并删除现有容器
docker ps -q -f name=my-hugo-site | xargs -r docker stop | xargs -r docker rm

# 运行 Docker 容器
docker run -d -p 80:80 --name my-hugo-site my-hugo-site

echo "Hugo site is running on http://localhost"
