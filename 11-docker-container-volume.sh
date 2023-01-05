# konsepnya sama seperti docker bind mount, tetapi data yang disimpan didalam docker server bukan sitem host 

docker container create --name mongo-volume --publish 27019:27017 --mount "type=volume,source=mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=juang --env MONGO_INITDB_ROOT_PASSWORD=juang123 mongo:latest