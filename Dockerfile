FROM richarvey/nginx-php-fpm:3.1.6

# Installation de Node.js + npm
RUN apk add --no-cache nodejs npm

# Copie du code
COPY . /var/www/html

# Variables d'environnement
ENV SKIP_COMPOSER=1
ENV WEBROOT=/var/www/html/public
ENV PHP_ERRORS_STDERR=1
ENV RUN_SCRIPTS=1
ENV REAL_IP_HEADER=1

ENV APP_ENV=production
ENV APP_DEBUG=false
ENV LOG_CHANNEL=stderr
ENV COMPOSER_ALLOW_SUPERUSER=1
ENV PHP_FPM_SECURITY_LIMIT_EXTENSIONS=".php"

WORKDIR /var/www/html

# Permissions
RUN chown -R nginx:nginx /var/www/html

CMD ["/start.sh"]