#!/bin/bash
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT}"
[[ -z "${docker_username}" ]] && DockerRepo='' || DockerRepo="ghcr.io/${docker_username}/"
docker build -t "${DockerRepo}fortune-cookie-backend:latest" -t "${DockerRepo}fortune-cookie-backend:1.0-$Tag" backend/
docker build -t "${DockerRepo}fortune-cookie-frontend:latest" -t "${DockerRepo}fortune-cookie-frontend:1.0-$Tag" frontend/
