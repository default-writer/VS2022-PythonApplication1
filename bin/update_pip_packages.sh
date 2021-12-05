#!/usr/bin/env bash
set -e

cd "${0%/*}"
cd ../..

pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U
