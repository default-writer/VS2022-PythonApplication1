#!/usr/bin/env bash
set -e

cd "${0%/*}/.."

SRC="$PWD/src"
TESTS="$PWD/bin/pytest"
COVERAGE="$PWD/bin/coverage"

echo "Running pytest"
pytest -s -v "$SRC" --cov="$SRC" --junit-xml="$TESTS/test_results.xml" --cov-report term-missing:skip-covered

coverage xml
coverage html -d "$COVERAGE"
coverage report --fail-under "95" --skip-covered
