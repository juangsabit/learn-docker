# Container bisa mengakses container lain dengan menyebutkan hostname dari container nya, yaitu nama container nya

# default driver bridge
docker network --driver bridge mongo-network

docker container create --name mongo-db --network mongo-network --env MONGO_INITDB_ROOT_USERNAME=juang --env MONGO_INITDB_ROOT_PASSWORD=juang123  mongo:latest

docker container create --name mongo-db-express --network mongo-network --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://juang:juang123@mongo-db:27017/" mongo-express:latest

# menghapus/mengeluarkan container yang sudah ada dalam network
docker network disconnect [nama-network] [nama-container]
docker network disconnect mongo-network mongo-db

# menambahkan container ke dalam network
docker network connect [nama-network] [nama-container]
docker network connect mongo-network mongo-db