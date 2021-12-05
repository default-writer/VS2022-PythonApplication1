#!/usr/bin/env bash
set -e

cd "${0%/*}/.."

black ./tests
black ./src