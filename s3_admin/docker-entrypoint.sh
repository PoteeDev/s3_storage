#!/bin/sh
MC_FILE=mc
MC_FILE_BIN=/bin/mc
if [ -f "$MC_FILE" ] || [ -f "$MC_FILE_BIN" ]
then
  echo -e "MinIO client exists on this host\n"
else
echo 'Downloading MinIO client tool'
wget https://dl.min.io/client/mc/release/linux-amd64/mc
chmod +x mc

echo 'Do you want to add MinIO client tool to /bin ? (y/n)'
read VAR
if [ ${VAR^^} == 'Y' ]
then
  mv mc /bin/
fi

fi




