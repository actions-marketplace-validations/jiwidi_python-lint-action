#!/bin/bash

set -e

# source = $1
# strict = $2
# autoflake-options = $3
# isort-options = $4
# black-options = $5


echo "===== Running Python Linter - '$2' mode ====="

if [ "$2" = "high" ]; then
    echo "Running autoflake"
    autoflake "$1" ${3} -c
    echo "Running isort"
    isort "$1"/**/*.py -m 3 ${4}
    echo "Running black"
    black "$1" ${5} --check

elif [ "$2" = "medium" ]; then
    echo "Running autoflake"
    autoflake "$1" ${3} -c
    echo "Running isort"
    isort "$1"/**/*.py -m 3 ${4}
    echo "Running black"
    black "$1" ${5} --check

else
    echo "Running autoflake"
    autoflake "$1" ${3} -c
    echo "Running isort"
    isort "$1"/**/*.py -m 3 ${4}
    echo "Running black"
    black "$1" ${5} --check
fi

echo "Done 🎉" ; echo ""