docker stop client
docker stop server

docker rm client
docker rm server

docker network rm iptable_private_net
