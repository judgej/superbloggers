#!/bin/sh

# 
#
# this script updates the blogs.supermondays.org


#cd /var/www/html/blogs.supermondays.org/current 
cd /var/www/vhosts/supermondays.org/blogs
./planet.py examples/fancy/config.ini

# 2041-03-25 JDJ If the resulting index.html file is empty, then the
# cache files have probably corrupted (again). Email me to fix (in the
# future we may just flush the cache fiels automatically, but we'll
# see how this goes).

if [ -s examples/output/index.html ]
then
    # All fine. We have something in the page at least.
else
    # Index file is empty or missing.
    ls -ls examples/output/ | mail -s 'Superblog page is empty! Please fix.' 'jason@academe.co.uk'
fi
