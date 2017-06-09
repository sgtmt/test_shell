#!/bin/sh
sudo apt-get update
sudo add-apt-repository ppa:ondrej/php
sudo apt-get install python-software-properties
sudo apt-get update
sudo apt-get install php
php -v
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer
