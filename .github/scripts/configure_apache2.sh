#!/bin/bash

# Copy website data
sudo rm /var/www/html/*
sudo cp build/* /var/www/html/

# Enable mods
sudo a2enmod rewrite
sudo a2dismod php5
sudo a2enmod php7.4

# Restart apache
sudo service apache2 restart

