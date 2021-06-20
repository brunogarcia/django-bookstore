# Django Bookstore

A project made with Django and Docker.


Following the instructions of the book [Django for Professionals](https://djangoforprofessionals.com/).

## Run the Docker container

```bash
docker build .
docker-compose up -d
```

## Configure the project

```bash
docker-compose exec web python manage.py migrate
docker-compose exec web python manage.py createsuperuser
```

## Run the unit tests

```bash
docker-compose exec web python manage.py test
```
