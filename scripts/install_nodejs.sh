#!/bin/bash

# dependencies: update_repositories.sh

curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
bash nodesource_setup.sh
apt-get install -y \
    nodejs
