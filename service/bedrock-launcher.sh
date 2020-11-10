#!/bin/sh

export VERSION="1.16.40.02"
export NAME="bedrock-server"
export BASE_FOLDER="/opt/minecraft"
export BASE_PATH=${BASE_FOLDER}/${NAME}

SERVER_NAME="bedrock-server-${VERSION}"

SERVER_FOLDER="${BASE_FOLDER}/${SERVER_NAME}"
SERVER_URL="https://minecraft.azureedge.net/bin-linux/bedrock-server-${VERSION}.zip"

if [ ! -d "${SERVER_FOLDER}" ]; then
  echo "Download server from ${SERVER_URL}"
  wget ${SERVER_URL} -O "${SERVER_FOLDER}.zip"

  echo "Unzip server into ${SERVER_FOLDER}"
  unzip "${SERVER_FOLDER}.zip" -d "${SERVER_FOLDER}"

  echo "Link to ${NAME}"
  ln -fs "${SERVER_FOLDER}" "${BASE_PATH}"
fi

echo "Launch server"
cd "${BASE_PATH}"
export LD_LIBRARY_PATH="${BASE_PATH}"
exec "${BASE_PATH}/bedrock_server"