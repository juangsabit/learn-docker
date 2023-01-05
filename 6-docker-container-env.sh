docker container create --name [nama-container] --publish [porthost:portcontainer] --env [key]=[value] --env [key]=[value] [image]:[tag]

docker container create --name contoh-mongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=juang --env MONGO_INITDB_ROOT_PASSWORD=juang123  mongo:latest

docker container create --name contoh-mysql2 --publish 3306:3306 --env MYSQL_ALLOW_EMPTY_PASSWORD=yes --env MYSQL_ROOT_PASSWORD=juang123 --env MYSQL_RANDOM_ROOT_PASSWORD=yes mysql:latest

