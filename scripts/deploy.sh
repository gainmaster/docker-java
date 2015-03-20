#!/usr/bin/env bash

cd $(dirname "${BASH_SOURCE[0]}") && cd ../

declare IMAGE_NAME="bachelorthesis/java"
declare VERSION_DIRECTORY="./versions"

deploy() {
	DEPLOY_VERSIONS=("$@")

	if [ ${#DEPLOY_VERSIONS[@]} -eq 0 ]; then
        for VERSION in ${VERSION_DIRECTORY}/*; do
    	    DEPLOY_VERSIONS+=($(basename $(echo $VERSION)))
        done
    fi

    docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASSWORD

    for VERSION in "${DEPLOY_VERSIONS[@]}"; do
        echo "[deploy.sh] - Pushing ${IMAGE_NAME}:${VERSION}." 
        docker push "${IMAGE_NAME}:${VERSION}"
        echo "[deploy.sh] - Finished pushing ${IMAGE_NAME}:${VERSION}." 
    done
}

if [[ -z $(which docker) ]]; then
    echo "Missing docker client which is required for deploying."
    exit 2
fi

deploy $@