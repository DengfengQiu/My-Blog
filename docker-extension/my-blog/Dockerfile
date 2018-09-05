# 1、第一行必须指定 基础镜像信息
FROM java:8

# 2、维护者信息
MAINTAINER dengfengqiu@163.com

# 3、镜像操作指令
VOLUME /tmp
ADD *.jar app.jar

# 4、容器启动执行指令
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom", "-Duser.timezone=GMT+08", "-jar", "/app.jar"]