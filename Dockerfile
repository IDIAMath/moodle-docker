# This is a draft for a docker image adding yaml
# to the standard moodle docker webserver.

FROM moodlehq/moodle-php-apache:${MOODLE_DOCKER_PHP_VERSION:-7.4}

ADD ./assets/php.ini /usr/local/etc/php/

RUN apt-get update && apt-get install -y libyaml-dev 
RUN pecl install yaml
RUN echo extension=yaml.so >> /usr/local/etc/php/conf.d/docker-php-moodle.ini 
