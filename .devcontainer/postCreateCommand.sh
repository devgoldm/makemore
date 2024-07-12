#!/bin/bash

# use --browser if you want to use Jupyter notebook in your browser instead of vscode
for arg in "$@"; do
    if [ "$arg" == "--browser" ]; then
        sudo apt-get update
        sudo apt-get install -y netcat-openbsd
    fi
done

pip install -r requirements.txt
