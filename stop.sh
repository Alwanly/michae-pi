#!/bin/bash

# Stop pihole services
docker-compose -f ./pihole/docker-compose.yml down

# Stop nginx services
docker-compose -f ./nginx/docker-compose.yml down

# Delete network
docker network rm michae_bridge


