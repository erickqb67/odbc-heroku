#!/bin/bash

arrow() {
  echo '----->' "$@"
}


export ODBCSYSINI=${HOME}/.apt/usr/lib/odbc/conf/

mkdir -p /etc

echo "[QuickBaseViaQuNect]
Driver=QuickBase via QuNect user
Description=QuickBase via QuNect user
uid=${QUICKBASE_USERNAME}
pwd=${QUICKBASE_PASSWORD}
QuickBaseServer=${QUICKBASE_SERVER}
pwdispassword=0
" > ${ODBCSYSINI}/odbc.ini

arrow "RULAT SCRIPT${ODBCSYSINI}"