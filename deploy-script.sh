echo "Entering appropriate directory"
cd /home/ubuntu/stonned-hippies

echo "Pulling latest change"
git pull 

docker-compose build
docker-compose up -d

yes | sudo docker system prune