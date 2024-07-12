#!/bin/bash

nohup bash -c 'jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root &'

while ! nc -z localhost 8888; do
  sleep 1
done

token=$(jupyter notebook list | grep -oP '(?<=token=)[a-z0-9]+')
echo "Jupyter available at:"
echo "http://127.0.0.1:8888/tree?token=$token"