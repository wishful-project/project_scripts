#!/bin/bash

echo "Install required libraries ..."
sudo apt-get install wget git python python-virtualenv python-dev

echo "Create virtual environment ..."
virtualenv dev

echo "Activate virtualenv ..."
source ./dev/bin/activate

echo "Pip install wishful ..."
pip install -U -r ./.repo/manifests/requirements.txt