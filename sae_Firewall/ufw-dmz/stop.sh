docker stop client
docker stop server
docker stop firewall

docker rm client
docker rm server
docker rm firewall

docker network rm ufw-dmz_private_net
docker network rm ufw-dmz_dmz_net
