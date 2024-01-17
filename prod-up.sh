#!/bin/bash 
export NODE_ENV=production
export $(grep -v '^#' .env | xargs -d '\n')
docker compose -f docker-compose.yml build
docker compose -f docker-compose.yml up --remove-orphans -d