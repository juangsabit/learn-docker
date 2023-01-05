docker container stop mongo-volume # matikan container source data yang akan dibackup

docker container create --name [nama-container] --mount "type=bind,source=[source dir sistem host],destination=[source dir container]" --mount "type=volume,source=[nama-volume],destination=[source dir container]" nginx:latest
docker container create --name nginx-backup --mount "type=bind,source=D:\Programming\Belajar Docker\backup,destination=/backup" --mount "type=volume,source=mongo-data,destination=/data" nginx:latest

docker container start nginx-backup

docker container exec -i -t nginx-backup /bin/bash

cd /data

tar cvf [destination/nama-file] [source]
tar cvf /backup/backup.tar.gz /data

docker container stop nginx-backup

docker container rm nginx-backup

docker container start mongo-volume

# CARA LEBIH SEDERHANA
docker container stop mongo-volume

docker container run --rm --name ubuntu-backup --mount "type=bind,source=D:\Programming\Belajar Docker\backup,destination=/backup" --mount "type=volume,source=mongo-data,destination=/data" ubuntu:latest tar cvf /backup/backup2.tar.gz /data

docker container start mongo-volume