#!/bin/bash


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
