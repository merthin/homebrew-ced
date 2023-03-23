#!/usr/bin/env bash

TMPDIR='/tmp/ced-install'
FILENAME='ced-cli-1.1.69.tgz'

if ! which node > /dev/null; then echo "Aborting. nodejs not installed. (Please install nodejs first)"; exit; fi
mkdir -p $TMPDIR
cd $TMPDIR
echo "Downloading latest CED Client Package"
curl -fsSL https://github.com/merthin/homebrew-brew/raw/main/src/$FILENAME --output $FILENAME
echo "Uncompressing source"
tar zxf $FILENAME
echo "Installing"
./install.sh
echo "Cleaning tmp installation files"
cd /tmp
rm -fr $TMPDIR
