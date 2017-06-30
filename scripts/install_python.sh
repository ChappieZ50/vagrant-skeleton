#!/bin/bash

# dependencies: update_repositories.sh, install_postgresql.sh

# install main packages for a Django project
apt-get install -y \
    python3-dev \
    python-virtualenv \
    libpq-dev \
    libffi-dev \
    libssl-dev \
    libxml2-dev \
    libxslt1-dev \
    libmemcached-dev \
    gettext \
    git \
    fabric \
    supervisor \
    redis-server

# install pillow dependencies
apt-get install -y \
    libtiff5-dev \
    libjpeg8-dev \
    zlib1g-dev \
    libfreetype6-dev \
    liblcms2-dev \
    libwebp-dev \
    tcl8.6-dev \
    tk8.6-dev \
    python3-tk

# prepare virtual environment
virtualenv -p /usr/bin/python3 /home/ubuntu/venv/
echo "source /home/ubuntu/venv/bin/activate" >> /home/ubuntu/.profile
source /home/ubuntu/venv/bin/activate
cd /vagrant/
pip install -U pip setuptools
pip install -r requirements.txt
chown -R ubuntu:ubuntu /home/ubuntu/venv/
