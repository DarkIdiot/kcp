#!/usr/bin/env bash
# docker.sh

action=$1

if [[ ${action} = "enter" ]]; then
    docker exec -it C-Project-Build-env /bin/bash
elif [[ ${action} = "build" ]]; then
    docker-compose build
elif [[ ${action} = "up" ]]; then
    docker-compose up -d
    echo "172.129.2.2:22"
elif [[ ${action} = "down" ]]; then
    docker-compose down
elif [[ ${action} = "debug" ]]; then
    docker-compose exec C-Project-Build-env sh -c "gdbserver :1234 cmake-build-debug/my_project_exec ${*:2}"
fi