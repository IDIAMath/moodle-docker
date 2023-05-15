export MOODLE_DOCKER_WWWROOT=../moodle41
export MOODLE_DOCKER_DB=pgsql
export MOODLE_DOCKER_WEB_HOST=`hostname`
export MOODLE_DOCKER_PHP_VERSION=8.0

export COMPOSE_PROJECT_NAME=moodle41
export MOODLE_DOCKER_WEB_PORT=0.0.0.0:8401


# Ensure customized config.php for the Docker containers is in place
\cp config.docker-template.php $MOODLE_DOCKER_WWWROOT/config.php

# Build the docker image with YAML
sh build.sh

# Start up containers
bin/moodle-docker-compose up -d

# Wait for DB to come up (important for oracle/mssql)
bin/moodle-docker-wait-for-db

# Initialize Moodle database for manual testing
bin/moodle-docker-compose exec webserver php admin/cli/install_database.php --agree-license --fullname="Docker moodle" --shortname="docker_moodle" --summary="Docker moodle site" --adminpass="test" --adminemail="admin@example.com"
