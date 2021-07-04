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

run_local:
	echo "Run local development"
	docker-compose up -d

run_unit_tests:
	echo "Run unit tests"
	docker-compose exec web python manage.py test
