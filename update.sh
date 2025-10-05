#!/bin/sh
[ "$(id -u)" -eq 0 ] || (echo "root please"; exit 1)

(cd /usr/share/odf;git pull)
echo "updated!"
exec /usr/local/bin/odf

