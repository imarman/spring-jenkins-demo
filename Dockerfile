#FROM java:8 设置基础镜像
FROM openjdk:11
#指定镜像创建者信息
MAINTAINER Arman
#切换工作目录
WORKDIR /
#创建执行目录
#mkdir -p /root/app
# 切换指定命令
RUN cd /home/app
# 传递参数,微服务打包的jar包名字
ARG JAR_FILE
# 将指定的JAR_FILE拷贝到 /servers/app.jar
COPY ${JAR_FILE}  /home/app/jenkins-app.jar
# 暴露指定的端口
EXPOSE 8082
# 执行发布命令
CMD ["nohup","java","-jar","/root/app/root/app/jenkins-app.jar","--server.port=8082","&"]