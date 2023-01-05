# view all container
docker container ls -a

# view container active only
docker container ls -a

# create new container
docker container create --name [nama-container] [nama-image]:[tag]

# start container
docker container start [nama-container]

# stop container
docker container stop [nama-container]

# delete container 
docker container rm [nama-container]
