docker stop nginx
docker rm nginx
docker run -idt --name nginx \
-p 80:80 \
-p 8081:8081 \
-v `pwd`/conf.d:/etc/nginx/conf.d \
-v ~/apps/phpfpm/app:/app \
--link phpfpm:phpfpm \
nginx
