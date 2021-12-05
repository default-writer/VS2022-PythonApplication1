#!/usr/bin/env bash
set -e

cd "${0%/*}/.."

sudo apt-get update && apt-get upgrade -y && apt-get install virtualenv -y

virtualenv venv

. venv/bin/activate

python3 -m pip install --upgrade pip

pip install -r $PWD/bin/build_requirements.txt #  1> /dev/null