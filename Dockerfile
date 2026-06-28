FROM richarvey/nginx-php-fpm:3.1.6

# Node + dépendances système
RUN apk add --no-cache nodejs npm curl unzip git

WORKDIR /var/www/html

# Copier code
COPY . .

# Env Laravel
ENV WEBROOT=/var/www/html/public
ENV PHP_ERRORS_STDERR=1
ENV RUN_SCRIPTS=1
ENV REAL_IP_HEADER=1

ENV APP_ENV=production
ENV APP_DEBUG=false
ENV LOG_CHANNEL=stderr
ENV COMPOSER_ALLOW_SUPERUSER=1
ENV PHP_FPM_SECURITY_LIMIT_EXTENSIONS=".php"

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer install --no-dev --optimize-autoloader --no-interaction

# Frontend build
RUN npm install
RUN npm run build

# Permissions correctes (IMPORTANT: www-data, pas nginx)
RUN chown -R www-data:www-data /var/www/html

CMD ["/start.sh"]