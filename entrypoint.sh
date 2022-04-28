#!/bin/bash

set -e

# source = $1
# strict = $2
# mypy-options = $3
# autoflake-options = $4
# black-options = $5
# isort-options = $6


echo "===== Running Python Linter - '$2' mode ====="

if [ "$2" = "high" ]; then
    echo "Running autoflake"
    autoflake "$1" ${4} -c
    echo "Running black"
    black "$1" ${5} --check
    echo "Running isort"
    isort "$1"/**/*.py -m 3 --trailing-comma ${6} -c

elif [ "$2" = "medium" ]; then
    echo "Running autoflake"
    autoflake "$1" ${4} -c
    echo "Running black"
    black "$1" ${5} --check
    echo "Running isort"
    isort "$1"/**/*.py -m 3 --trailing-comma ${6} -c

else
    echo "Running autoflake"
    autoflake "$1" ${4} -c
    echo "Running black"
    black "$1" ${5} --check
    echo "Running isort"
    isort "$1"/**/*.py -m 3 --trailing-comma ${6} -c
fi

echo "Done 🎉" ; echo ""