FROM python:3.8

ENV CONTAINER_NAME="Tafe-QLD-Campus-Django-v1"
ENV DJANGO_SECRET_KEY="REPLACE"
ENV DJANGO_DEBUG_MODE="TRUE"
ENV DJANGO_ALLOWED_HOSTS="139.218.85.171"
ENV DB_ENGINE="django.db.backends.mysql"
ENV DB_HOST="192.0.0.5"
ENV DB_PORT="3306"
ENV DB_DATABASE="django"
ENV DB_USER="django"
ENV DB_PASSWORD="REPLACE"

RUN apt-get update
RUN apt-get install -y cron

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .

RUN python3 manage.py crontab add
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
EXPOSE 8000