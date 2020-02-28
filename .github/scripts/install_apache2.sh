#!/bin/bash

# Install Apache2
sudo apt-get update
sudo apt-get install -y --force-yes apache2

# Install php 7.3
sudo apt-get install -y --force-yes libapache2-mod-php7.4
