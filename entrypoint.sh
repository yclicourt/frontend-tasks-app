#!/bin/sh

sed -i "s|API_URL: null|API_URL: \"$VITE_API_URL_PLACEHOLDER\"|g" /usr/share/nginx/html/config.js

exec "$@"