#!/usr/bin/env bash
set -e

cd "${0%/*}/.."

apt-get update && apt-get upgrade -y && apt-get install -y python3-venv
rm -rf venv
python3 -m venv venv

. venv/bin/activate

python3 -m pip install --upgrade pip

pip3 install -r $PWD/bin/build_requirements.txt