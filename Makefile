.PHONY: list

list:
	@LC_ALL=C $(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'

configure_django:
	echo "Migrate the DB"
	docker-compose exec web python manage.py migrate
	echo "Create DB super user"
	docker-compose exec web python manage.py createsuperuser
	echo "Create static assets"
	docker-compose exec web python manage.py collectstatic

docker_build:
	echo "Build the docker container"
	docker build .

docker_rebuild:
	echo "Rebuild the docker container"
	docker-compose up -d --build

run_local:
	echo "Run local development"
	docker-compose up -d

stop_local:
	echo "Down local development"
	docker-compose down

run_unit_tests:
	echo "Run unit tests"
	docker-compose exec web python manage.py test
