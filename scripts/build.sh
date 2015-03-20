#!/usr/bin/env bash

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
        echo "[build.sh] - Building ${IMAGE_NAME}:${VERSION}."
        docker build -t "${IMAGE_NAME}:${VERSION}" "${VERSION_DIRECTORY}/${VERSION}"
        echo "[build.sh] - Finished building ${IMAGE_NAME}:${VERSION}."
    done
}

if [[ -z $(which docker) ]]; then
    echo "[build.sh] - Missing docker client which is required for building."
    exit 2
fi

build $@