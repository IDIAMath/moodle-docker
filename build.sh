#!/bin/sh


if test ! "$MOODLE_DOCKER_PHP_VERSION"
then
   if test "$1"
   then
      MOODLE_DOCKER_PHP_VERSION=$1
   else
      MOODLE_DOCKER_PHP_VERSION=7.4
   fi
   export MOODLE_DOCKER_PHP_VERSION
fi
docker build -t stack-php-apache:$MOODLE_DOCKER_PHP_VERSION .
