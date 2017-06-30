#!/bin/bash

# dependencies: update_repositories.sh, install_java.sh

elasticsearch_version="5.1.1"
elasticsearch_file="elasticsearch-$elasticsearch_version.deb"
if [ -f "/home/ubuntu/$elasticsearch_file" ]
then
  echo "$elasticsearch_file found."
else
  wget https://artifacts.elastic.co/downloads/elasticsearch/${elasticsearch_file}
fi
dpkg -i ${elasticsearch_file}
systemctl enable elasticsearch.service
systemctl start elasticsearch
