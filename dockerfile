# Import a Base Linux OS with Python 3.8 installed.
FROM python:3.8

# Setup the Environment Variables.
# Django
ENV DJANGO_SECRET_KEY=REPLACE
ENV DJANGO_DEBUG_MODE=True
ENV DJANGO_ALLOWED_HOSTS=139.218.85.171
#Database
ENV DB_ENGINE=django.db.backends.mysql
ENV DB_HOST=139.218.85.171
ENV DB_PORT=3306
ENV DB_DATABASE=django
ENV DB_USER=django
ENV DB_PASSWORD=REPLACE

# Get the Latest Updates.
RUN apt-get update

# Install Cron.
RUN apt-get install -y cron

# Set the Working Directory.
WORKDIR /app

# Transfer the Project Dependencies to the Container.
COPY requirements.txt requirements.txt

# Install the Dependancies.
RUN pip3 install -r requirements.txt

# Transfer the Project Source Files to the Container.
COPY . .

# Start the Cron Service.
RUN cron start

# Setup Scheduled Taks.
RUN python3 manage.py crontab add

# Start tthe server
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]

# Expose the Port 8000.
EXPOSE 8000