# Django Bookstore

A project made with Django and Docker.

Following the instructions of the book [Django for Professionals](https://djangoforprofessionals.com/).

## Build the Docker container

```bash
make docker_build
```

## Configure the Django project

```bash
make configure_django
```

## Local development

```bash
make run_local
```

- Bookstore: [http://127.0.0.1:8000/](http://127.0.0.1:8000)
- Admin: [http://127.0.0.1:8000/admin](http://127.0.0.1:8000/admin)


## Run the unit tests

```bash
make run_unit_tests
```
