docker volume create mongo-restore

docker volume ls

docker container run --rm --name ubuntu-restore --mount "type=bind,source=D:\Programming\Belajar Docker\backup,destination=/backup" --mount "type=volume,source=mongo-restore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

docker container create --name mongo-restore --publish 27020:27017 --mount "type=volume,source=mongo-restore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=juang --env MONGO_INITDB_ROOT_PASSWORD=juang123 mongo:latest
