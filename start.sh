#!/bin/sh

set -e

chown -R nobody /var/www

su -s /bin/sh nobody -c 'php7 /var/www/wiki/bin/indexer.php -c'

exec /usr/bin/supervisord -c /etc/supervisord.conf
