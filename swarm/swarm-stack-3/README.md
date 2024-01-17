# To scale the container in Swarm

# docker service scale <container>

docker service scale web=5

# To update the image of the container

# docker service update --image <image> <container>

docker service update --image nginx:1.13.6 web

# To remove port and add port

# docker service update --publish-rm <existing-port> --publish-add <newport> <container>

docker service update --publish-rm 8088:80 --publish-add 9090:80 web
