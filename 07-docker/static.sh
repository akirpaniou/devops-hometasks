#!/bin/bash

docker build -t hometask-image .

docker run -d -p 8081:80 -v "./07-docker/index.html:/var/www/html/index.html" hometask-image