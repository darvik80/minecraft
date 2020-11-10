#!/bin/sh

export VERSION="1.16.40.02"
export NAME="bedrock-server"
export BASE_FOLDER="/opt/minecraft"
export BASE_PATH="${BASE_FOLDER}/${NAME}"

export SERVER_NAME="bedrock-server-${VERSION}"

export SERVER_FOLDER="${BASE_FOLDER}/${SERVER_NAME}"
export SERVER_URL="https://minecraft.azureedge.net/bin-linux/bedrock-server-${VERSION}.zip"

