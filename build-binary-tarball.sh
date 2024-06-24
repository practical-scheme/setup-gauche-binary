#!/bin/sh
set -e

echo "Obtain get-gauche"

curl -f -o get-gauche.sh https://raw.githubusercontent.com/shirok/get-gauche/master/get-gauche.sh
chmod +x get-gauche.sh

echo "Build"
./get-gauche.sh --prefix /usr --destdir package --version latest --force

echo "Package"
(cd package; tar czvf ../gauche-binary-ubuntu-latest.tar.gz .)
