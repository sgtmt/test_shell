#!/bin/sh
sudo apt-get update
sudo add-apt-repository ppa:ondrej/php
sudo apt-get install libapache2-mod-php7.1
sudo apt-get install python-software-properties
sudo a2dismod php5
sudo a2enmod php7.1
sudo apt-get install php7.1-dom php7.1-mbstring php7.1-zip php7.1-mysql
sudo apt-get update
sudo apt-get install php
php -v
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chown -R $USER $HOME/.composer
sudo apt-get update
rm README.md php.ini hello-world.php
sudo composer self-update
sudo composer global require 'laravel/installer'
export PATH=~/.composer/vendor/bin:$PATH
composer create-project --prefer-dist laravel/laravel laravel
shopt -s dotglob
