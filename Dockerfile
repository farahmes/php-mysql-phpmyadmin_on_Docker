FROM php:8.0-apache 
WORKDIR /var/www/html

RUN apt-get update && apt-get install -y git
RUN docker-php-ext-install pdo pdo_mysql mysqli
#installing Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"\
    && php composer-setup.php \
    && php composer-setup.php --install-dir=. --filename=composer \
#cleaning up After Composer Installation
    && php -r "unlink('composer-setup.php');"
