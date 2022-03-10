# Para buildar a imagem sem usar o docker-compose

docker build -f Dockerfile.local -t docker_test .

docker container run --name docker_test -p 4000:4000 docker_test:latest