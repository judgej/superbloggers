#!/bin/sh

# 
#
# this script updates the blogs.supermondays.org


#cd /var/www/html/blogs.supermondays.org/current 
cd /var/www/vhosts/supermondays.org/blogs
./planet.py examples/fancy/config.ini

