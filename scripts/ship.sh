#!/usr/bin/env bash

set -x              # Print command traces before executing command
trap 'exit 1' ERR   # Exit script with error if command fails

# Set working directory to project root
cd $(dirname "${BASH_SOURCE[0]}") && cd ../

declare IMAGE_NAME="bachelorthesis/java"
declare VERSION_DIRECTORY="./versions"

ship() {
	SHIP_VERSIONS=("$@")

	if [ ${#SHIP_VERSIONS[@]} -eq 0 ]; then
        for VERSION in ${VERSION_DIRECTORY}/*; do
    	    SHIP_VERSIONS+=($(basename $(echo $VERSION)))
        done
    fi

    docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASSWORD

    for VERSION in "${SHIP_VERSIONS[@]}"; do 
        docker push "${IMAGE_NAME}:${VERSION}"
    done
}

if [[ -z $(which docker) ]]; then
    echo "Missing docker client which is required for deploying."
    exit 2
fi

ship $@