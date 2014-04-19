#!/usr/bin/env bash

echo "-- Testing --"
sed -i "s/post_max_size = .*/post_max_size = 25M/" /etc/php5/fpm/php.ini
sed -i "s/upload_max_filesize = .*/upload_max_filesize = 25M/" /etc/php5/fpm/php.ini

sudo service php5-fpm restart
