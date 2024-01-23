From php:8.0-apache 
WORKDIR /var/www/html
RUN apt-get update && apt-get install -y \
    git \
    docker-php-ext-install mysqli pdo pdo_mysql
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php==^
RUN php composer-setup.php --install-dir=. --filename=composer