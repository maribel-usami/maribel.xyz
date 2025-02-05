# 使用官方的 NGINX 镜像
FROM nginx:latest

# 设置工作目录
WORKDIR /usr/share/nginx/html

# 复制静态文件
COPY ./public/ .

# 复制 NGINX 配置文件（如果有自定义配置）
COPY ./nginx.conf /etc/nginx/nginx.conf

# 暴露 80 端口
EXPOSE 80
