#!/bin/bash

set -e

# source = $1
# strict = $2
# mypy-options = $3
# autoflake-options = $4
# black-options = $5
# isort-options = $6


echo "===== Running Python Linter - '$2' mode ====="

echo "Running mypy"
mypy "$1" --show-error-codes --show-error-context --pretty ${3}

echo "Running black"
if [ "$2" = "high" ]; then
    black "$1" ${5} --check
    echo "Running isort"
    isort "$1"/**/*.py -m 3 --trailing-comma ${6} -c
    echo "Running autoflake"
    autoflake "$1" ${4} -c

elif [ "$2" = "medium" ]; then
    black "$1" ${5} --check
    echo "Running isort"
    isort "$1"/**/*.py -m 3 --trailing-comma ${6} -c
    echo "Running autoflake"
    autoflake "$1" ${4} -c

else
    black "$1" ${5} --check
    echo "Running isort"
    isort "$1"/**/*.py -m 3 --trailing-comma ${6} --diff
    echo "Running autoflake"
    autoflake "$1" ${4} -c
fi

echo "Done 🎉" ; echo ""