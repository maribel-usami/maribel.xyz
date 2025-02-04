# 使用 Hugo 官方镜像作为基础镜像
FROM klakegg/hugo:ext-alpine

# 设置工作目录
WORKDIR /app

# 将 Hugo 网站文件复制到容器内
COPY . .

# 构建 Hugo 网站（如果你没有事先在本地构建）
RUN hugo --minify

# 暴露 80 端口
EXPOSE 80

# 启动静态网站
CMD ["hugo", "server", "--bind", "0.0.0.0", "--port", "80"]
