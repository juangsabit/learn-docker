# sharing file atau folder yang ada di sistem host ke container
docker container create --name [nama-container] --mount "type=bind,source=folder,destination=folder,readonly" [image]:[tag]

docker container create --name mongo-data --publish 27018:27017 --mount "type=bind,source=D:\Programming\Belajar Docker\mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=juang --env MONGO_INITDB_ROOT_PASSWORD=juang123 mongo:latest