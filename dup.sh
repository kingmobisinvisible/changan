docker stack rm admin
docker stack rm content
docker stack rm db
docker stack rm download
docker stack rm frontend
docker stack rm monitoring
cd /changan/docker/swarm/local
docker-compose down
systemctl restart docker
cd /changan/docker/swarm/admin
docker stack deploy --compose-file docker-compose.yml admin
cd /changan/docker/swarm/content
docker stack deploy --compose-file docker-compose.yml content
cd /changan/docker/swarm/db
docker stack deploy --compose-file docker-compose.yml db
cd /changan/docker/swarm/download
docker stack deploy --compose-file docker-compose.yml download
cd /changan/docker/swarm/frontend
docker stack deploy --compose-file docker-compose.yml frontend
cd /changan/docker/swarm/swarmprom
docker stack deploy --compose-file docker-compose.yml monitoring
cd /changan/docker/swarm/local
docker-compose up -d
