#!/bin/bash

docker build -t hometask-image .

CONTAINER_ID=$(docker run -d -p 8080:80 hometask-image)

echo "Container ID: $CONTAINER_ID"

sleep 5

docker exec -i $CONTAINER_ID bash -c 'find /var/www/html -name index.html'

sleep 5

docker exec -i $CONTAINER_ID bash -c 'ls /var/www/html'
docker exec -i $CONTAINER_ID bash -c 'rm /var/www/html/index.html'
if [ $? -eq 0 ]; then
    echo "File index.html deleted successfully"
else
    echo "Error deleting file index.html"
fi
docker exec $CONTAINER_ID service apache2 restart