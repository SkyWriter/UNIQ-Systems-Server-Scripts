#!/bin/bash

echo "Making an installation script..."

TGZ_FILE=/tmp/uniq_scripts_install.tgz
BASE64_FILE=/tmp/uniq_scripts_install.tgz.base64

tar cvfz $TGZ_FILE uniq-add-project uniq-add-project-sued uniq-del-project uniq-login
base64 -i $TGZ_FILE -o $BASE64_FILE
# rm -f $TGZ_FILE

cat install-base-1 $BASE64_FILE install-base-2 > install.sh
chmod a+x install.sh

rm $BASE64_FILE
echo "Done!"
