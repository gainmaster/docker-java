#!/usr/bin/env bash

set -x              # Print command traces before executing command
trap 'exit 1' ERR   # Exit script with error if command fails

# Set working directory to project root
cd $(dirname "${BASH_SOURCE[0]}") && cd ../

declare IMAGE_NAME="bachelorthesis/java"
declare VERSION_DIRECTORY="./versions"


build() {
	BUILD_VERSIONS=("$@")

	if [ ${#BUILD_VERSIONS[@]} -eq 0 ]; then
        for VERSION in ${VERSION_DIRECTORY}/*; do
    	    BUILD_VERSIONS+=($(basename $(echo $VERSION)))
        done
    fi

    for VERSION in "${BUILD_VERSIONS[@]}"; do
        if [ ! -f ${VERSION_DIRECTORY}/${VERSION}/Dockerfile ]; then
            echo "[build.sh] - Unable to find Dockerfile for Java version: $VERSION.";
            exit 1;
        fi
    done

    for VERSION in "${BUILD_VERSIONS[@]}"; do
        docker build -t "${IMAGE_NAME}:${VERSION}" "${VERSION_DIRECTORY}/${VERSION}"
    done
}

if [[ -z $(which docker) ]]; then
    echo "Missing docker client which is required for building."
    exit 2
fi

build $@