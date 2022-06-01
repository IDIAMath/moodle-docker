# This is a draft for a docker image adding yaml
# to the standard moodle docker webserver.

FROM moodlehq/moodle-php-apache:${MOODLE_DOCKER_PHP_VERSION:-7.3}

RUN apt-get update && apt-get install -y libyaml-dev
RUN pecl install yaml
