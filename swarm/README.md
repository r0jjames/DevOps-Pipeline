# DOCKER SWARM

# To create docker container with health check

docker container run --name p2 --health-cmd="pg_isready -U postgres || exit 1" -e POSTGRES_PASSWORD="password" -d postgres

# To create service container in swarm with health check

docker service create --name p2 -d --health-cmd="pg_isready -U postgres || exit 1" -e POSTGRES_PASSWORD="password" postgres
