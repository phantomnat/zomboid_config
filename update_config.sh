#!/bin/bash
SERVER_NAME=crazy_gamer

if [ -z "$SERVER_PASSWORD" ]; then
  echo "SERVER_PASSWORD is empty"
  exit 1
fi

SCRIPT_DIR=$(dirname "$0")
TARGET_DIR=/root/Zomboid/Server


envsubst < "${SCRIPT_DIR}/config/${SERVER_NAME}.ini" > "${TARGET_DIR}/${SERVER_NAME}.ini"

cp -f "${SCRIPT_DIR}/config/${SERVER_NAME}_SandboxVars.lua" "${TARGET_DIR}/${SERVER_NAME}_SandboxVars.lua"

echo "Done!"