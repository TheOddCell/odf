#!/bin/sh
[ "$(id -u)" -eq 0 ] || (echo "root please"; exit 1)

git clone https://github.com/theoddcell/odf /usr/share/odf
(cd /usr/share/odf; git pull)
ln -s /usr/share/odf/odf /usr/local/bin/odf
echo "installed! Run /usr/share/odf/update.sh as root to update odf."
exec /usr/local/bin/odf

