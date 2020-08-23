#/bin/bash

docker run -it -d \
	-p 8080:8080 \
	--restart=always \
	--name registry-web \
	--link registry \
	-e REGISTRY_URL=http://registry:5000/v2 \
	-e REGISTRY_NAME=localhost:5000 \
	hyper/docker-registry-web
