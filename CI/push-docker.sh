#!/bin/bash
echo "$docker_password" | docker login ghcr.io --username "$docker_username" --password-stdin
docker push "ghcr.io/$docker_username/fortune-cookie-backend:1.0-${GIT_COMMIT}" 
docker push "ghcr.io/$docker_username/fortune-cookie-backend:latest" &
docker push "ghcr.io/$docker_username/fortune-cookie-frontend:1.0-${GIT_COMMIT}" 
docker push "ghcr.io/$docker_username/fortune-cookie-frontend:latest" &
wait
