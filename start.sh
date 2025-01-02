#!/bin/bash
# ...existing code...

# Check if Docker network bridge exists, create if it doesn't
if ! docker network ls | grep -q michae_bridge; then
    docker network create michae_bridge
fi

# Start the application
echo "start up pihole"
docker compose -f ./pihole/docker-compose.yml up -d

# Wait for pihole container to start
sleep 5

# Connect pihole container to the network bridge if not already connected
if ! docker network inspect michae_bridge | grep -q pihole; then
    docker network connect michae_bridge pihole
fi

echo "start up nginx"
docker compose -f ./nginx/docker-compose.yml up -d

# Wait for nginx container to start
sleep 5

# Connect nginx container to the network bridge if not already connected
if ! docker network inspect michae_bridge | grep -q nginx-server; then
    docker network connect michae_bridge nginx-server
fi
