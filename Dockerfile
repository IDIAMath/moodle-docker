# This is a draft for a docker image adding yaml
# to the standard moodle docker webserver.

FROM moodlehq/moodle-php-apache:8.1-bullseye

RUN apt-get update && apt-get install -y libyaml-dev
RUN pecl install yaml
