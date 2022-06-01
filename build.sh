#!/bin/sh


MOODLE_DOCKER_PHP_VERSION=$1
export MOODLE_DOCKER_PHP_VERSION
docker build -t stack-php-apache:$MOODLE_DOCKER_PHP_VERSION .
