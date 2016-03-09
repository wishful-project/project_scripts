#!/bin/bash
echo "repo sync"
./repo sync
echo "Switch to master ..."
./repo start master --all