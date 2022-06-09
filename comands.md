<!-- Useful Commands -->

## pipenv install django

## pipenv shell

## django-admin startproject app .

## python manage.py runserver

## python manage.py createsuperuser

## python manage.py startapp example

## pip freeze > requirements.txt

<!-- Install Project Dependencies -->

## pip install -r requirements.txt

<!-- Django Comands -->

## python manage.py createsuperuser

## python manage.py migrate --fake campus zero

## python manage.py makemigrations

## python manage.py migrate

<!-- Cron Commands -->

## service cron start

## python manage.py crontab show

## python manage.py crontab run fce698498e4bf03e48514882c623a7cc

<!-- Docker Commands -->

## docker build --tag pinktaco97/tafe-qld-campus-django:v0.0.32 .

## docker run -p 8000:8000 --env-file .env pinktaco97/tafe-qld-campus-django:v0.0.32

## docker save -o docker_images/tafe-qld-campus-django-v0.0.32.tar pinktaco97/tafe-qld-campus-django:v0.0.32
