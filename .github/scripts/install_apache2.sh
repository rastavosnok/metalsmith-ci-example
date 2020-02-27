#!/bin/bash

# Install Apache2
sudo apt-get update
sudo apt-get install -y --force-yes apache2

# Install php 7.3
sudo apt-get install libapache2-mod-php7.3

# Copy website data
sudo cp www/info.php /var/www/info.php
sudo cp www/apache.php /var/www/apache.php

# Enable mods
sudo a2enmod rewrite
sudo a2enmod php7.3

# Restart apache
sudo service apache2 restart

