set -e 

#打包并创建镜像(不注释也可以,镜像覆盖,因此需要删除原有镜像,命令在下面,删除名称为none的镜像)
mvn clean package docker:build -Dmaven.test.skip=true

#删除名称为none的镜像
docker images|grep none|awk '{print $3 }'|xargs docker rmi

#登录腾讯云镜像容器
docker login --username=100005583842 http://ccr.ccs.tencentyun.com/myspace/nginx-proxy

#推送到镜像容器
docker push ccr.ccs.tencentyun.com/myserver/my-blog:latest