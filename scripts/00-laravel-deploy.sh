#!/usr/bin/env bash

echo "=== Laravel + Vite Deploy Script Started ==="

cd /var/www/html

echo "→ Composer dependencies..."
composer install --no-dev --optimize-autoloader --no-interaction --prefer-dist

echo "→ NPM clean install + Vite build..."
npm ci --omit=dev
npm run build

echo "→ Laravel cache optimizations..."
php artisan config:cache
php artisan route:cache
php artisan view:cache

echo "→ Storage symbolic link..."
php artisan storage:link

echo "→ Database migrations..."
php artisan migrate --force

echo "→ Correction des permissions..."
chown -R nginx:nginx /var/www/html
chmod -R 755 /var/www/html/storage /var/www/html/bootstrap/cache
find /var/www/html/storage -type d -exec chmod 775 {} \;
find /var/www/html/storage -type f -exec chmod 664 {} \;

echo "=== Deployment completed successfully ==="