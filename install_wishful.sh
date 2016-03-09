#!/bin/bash

echo "Install required libraries ..."
sudo apt-get install wget git python python-virtualenv python-dev

echo "Get repo ..."
wget https://storage.googleapis.com/git-repo-downloads/repo

chmod a+x ./repo

echo "Init repo ..."
./repo init -u ssh://git@gitlab.tubit.tu-berlin.de/wishful/wishful_manifests.git

echo "Repo sync ..."
./repo sync

echo "Switch to master ..."
./repo start master --all


echo "Check status of all repositories ..."
./repo status

echo "Create virtual environment ..."
virtualenv dev

echo "Activate virtualenv ..."
source ./dev/bin/activate

echi "Pip install wishful ..."
pip install -U -r ./.repo/manifests/requirements.txt

