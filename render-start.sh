#!/bin/sh

export VITE_API_URL_CLIENT=$RENDER_EXTERNAL_URL/api
export VITE_API_URL_SERVER=http://localhost:80/api
export VITE_FRONTEND_URL=$RENDER_EXTERNAL_URL
export VITE_STRIPE_PUBLISHABLE_KEY=$STRIPE_PUBLISHABLE_KEY

cd /app/backend

if ! php artisan migrate --force; then
    echo "\033[0;31mERROR: Migrations could not complete. Check the error above.\033[0m"
    echo "\033[0;31mERROR: Ensure DATABASE_URL is set.\033[0m"
fi

# Clear caches
php artisan cache:clear
php artisan config:clear
php artisan route:clear
php artisan view:clear

chown -R www-data:www-data /app/backend
chmod -R 777 /app/backend/storage /app/backend/bootstrap/cache

exec /usr/bin/supervisord -c /etc/supervisord.conf
