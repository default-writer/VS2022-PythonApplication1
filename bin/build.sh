#!/usr/bin/env bash
set -e

cd "${0%/*}/.."

apt-get update && apt-get upgrade -y && apt-get install virtualenv -y
rm -rf venv
virtualenv venv

. venv/bin/activate

python3 -m pip install --upgrade pip

pip install -r $PWD/bin/build_requirements.txt #  1> /dev/null