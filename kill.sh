
PROJECT=$1
test $PROJECT || PROJECT=moodle-stack

docker stop ${PROJECT}-webserver-1 ${PROJECT}-exttests-1 ${PROJECT}-selenium-1 ${PROJECT}-db-1 ${PROJECT}-maxima-1 ${PROJECT}-mailpit-1
docker rm ${PROJECT}-webserver-1 ${PROJECT}-exttests-1 ${PROJECT}-selenium-1 ${PROJECT}-db-1 ${PROJECT}-maxima-1 ${PROJECT}-mailpit-1

