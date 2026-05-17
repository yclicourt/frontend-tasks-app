#!/bin/sh

# Buscamos en todos los archivos .js de la carpeta donde Nginx sirve la app
# y reemplazamos el placeholder por el valor de la variable de entorno
find /usr/share/nginx/html -name "*.js" -exec sed -i "s|VITE_API_URL_PLACEHOLDER|$VITE_BASE_URL|g" {} +

# Ejecutamos el comando original de Nginx
exec "$@"