FROM ubuntu:24.04

WORKDIR /var/www/app

RUN apt-get update && apt-get -y install php php-pear php-xdebug

COPY ./docker_config/php.ini /etc/php/8.2/cli/php.ini

CMD php -S 0.0.0.0:8000