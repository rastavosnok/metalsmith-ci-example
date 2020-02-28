#!/bin/bash

# Copy website data
sudo cp build/phpinfo.php /var/www/html/phpinfo.php

# Enable mods
sudo a2enmod rewrite
sudo a2dismod php5
sudo a2enmod php7.4

# Restart apache
sudo service apache2 restart

