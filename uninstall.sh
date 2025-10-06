#!/bin/sh
[ "$(id -u)" -eq 0 ] || (echo "root please"; exit 1)

rm -rf /usr/share/odf
rm /usr/local/bin/odf
echo "uninstalled odf"
