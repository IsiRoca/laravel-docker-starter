#!/bin/bash

echo "Action: Remove Database folders" &&
sudo rm -R storage/tmp/ &&

echo "Action: Remove .env File" &&
sudo rm .env &&

echo "Action: Remove vendors Folder" &&
sudo rm -r vendor &&

echo "Action: Remove node_modules Folder" &&
sudo rm -r node_modules &&

echo "Action: Stop and Remove All Docker Containers" &&
docker rm -f $(docker ps -a -q) &&

echo "Action: Remove All Docker Images" &&
docker rmi $(docker images -q)