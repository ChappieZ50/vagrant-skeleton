#!/usr/bin/env bash

# dependencies: update_repositories.sh

apt-get install -y \
    postgresql \
    postgis \
    libpq-dev

sudo -u postgres psql -c "CREATE USER project WITH PASSWORD 'secret';"
sudo -u postgres psql -c "CREATE DATABASE project WITH OWNER project ENCODING 'UTF8';"
sudo -u postgres psql project -c "CREATE EXTENSION postgis;"
