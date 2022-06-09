# Import a Base Linux OS with Python 3.8 installed.
FROM python:3.8

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