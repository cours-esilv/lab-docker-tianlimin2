#!/bin/bash

set -euo pipefail

: ${WS_BACK_URL:=http://localhost:8080}

echo "Will start Nginx with the following configuration:"
echo "  - WS_BACK_URL : $WS_BACK_URL"
sed -i 's@TR_WS_BACK_URL@'"$WS_BACK_URL"'@' /usr/share/nginx/html/index.html

# Debugging statements
echo "Contents of /:"
ls -l /
echo "Contents of /usr/share/nginx/html:"
ls -l /usr/share/nginx/html

exec /docker-entrypoint.sh nginx -g "daemon off;"