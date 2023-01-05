# membuat limitasi resource pada container
docker container create --name [nama-container] --cpus [limit-cpu] --memory [limit-memory] --publish [porthost]:[portcontainer] [image]:[tag]

docker container create --name smallnginx --cpus 0.5 --memory 100m --publish 8081:80 nginx:latest