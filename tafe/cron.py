# from tafe.models import *
from datetime import datetime
from pickle import FALSE

from .models import Notification, Profile

# Import Logging Functions
# import logging

#Import EXPO Notifications.
from exponent_server_sdk import (
    PushClient,
    PushMessage,
    PushServerError,
)

# Say Hello
def say_hello():
	print("Hello World")
	pass

# Send the Push Notifications to Expo Notifications API.
def send_notifications():

	# Debug
	print(datetime.now().strftime('%d/%m/%Y %H:%M:%S') + " - Sending Notifications...")

	# Get all Notifications from the Database.
	notifications = Notification.objects.filter(
		sent = False,
		sendTime__lte = datetime.now()
	)

	# For each of the Notifications.
	for notification in notifications:

		# Log the Notification thats about to be sent.
		print(datetime.now().strftime('%d/%m/%Y %H:%M:%S') + " - Notification: " + str(notification))

		# How many Users where sent this notification.
		count = 0

		# If The Notification needs to be sent to everyone.
		if (notification.type == 'A'):

			# Get all User Profiles from the Database.
			profiles = Profile.objects.filter(
				notificationToken__isnull = False
			)

			# For each of the User Profiles.
			for profile in profiles:

				# Try Sending a Notification to the User.
				try:
					PushClient().publish(PushMessage(
						to = profile.notificationToken,
						title = notification.title,
						body = notification.body,
						sound = "default"
					))

					# Increament the count by 1.
					count += 1

				# If there was an Error sending the Notification.
				except PushServerError as e:
					# Log the Error.
					print(datetime.now().strftime('%d/%m/%Y %H:%M:%S') + " - ERROR - " + e)

		# If The Notification needs to be sent to everyone from an Industry.
		elif (notification.type == 'I'):

			# Get all User Profiles from the Database.
			profiles = Profile.objects.filter(
				notificationToken__isnull = False,
				industry=notification.industry
			)

			# For each of the User Profiles.
			for profile in profiles:

				# Try Sending a Notification to the User.
				try:
					PushClient().publish(PushMessage(
						to = profile.notificationToken,
						title = notification.title,
						body = notification.body,
						sound = "default"
					))

					# Increament the count by 1.
					count += 1

				# If there was an Error sending the Notification.
				except PushServerError as e:
					# Log the Error.
					print(datetime.now().strftime('%d/%m/%Y %H:%M:%S') + " - ERROR - " + e)

		# If The Notification needs to be sent to everyone from a Region.
		elif (notification.type == 'R'):

			# Get all User Profiles from the Database.
			profiles = Profile.objects.filter(
				notificationToken__isnull = False,
				region=notification.region
			)

			# For each of the User Profiles.
			for profile in profiles:

				# Try Sending a Notification to the User.
				try:
					PushClient().publish(PushMessage(
						to = profile.notificationToken,
						title = notification.title,
						body = notification.body,
						sound = "default"
					))

					# Increament the count by 1.
					count += 1

				# If there was an Error sending the Notification.
				except PushServerError as e:
					# Log the Error.
					print(datetime.now().strftime('%d/%m/%Y %H:%M:%S') + " - ERROR - " + e)
		
		# If The Notification needs to be sent to everyone from a Campus.
		elif (notification.type == 'C'):

			# Get all User Profiles from the Database.
			profiles = Profile.objects.filter(
				notificationToken__isnull = False,
				campus=notification.campus
			)

			# For each of the User Profiles.
			for profile in profiles:

				# Try Sending a Notification to the User.
				try:
					PushClient().publish(PushMessage(
						to = profile.notificationToken,
						title = notification.title,
						body = notification.body,
						sound = "default"
					))

					# Increament the count by 1.
					count += 1

				# If there was an Error sending the Notification.
				except PushServerError as e:
					# Log the Error.
					print(datetime.now().strftime('%d/%m/%Y %H:%M:%S') + " - ERROR - " + e)


		# Update the Notification
		notification.sent = True
		notification.save()

		# Debug
		print(datetime.now().strftime('%d/%m/%Y %H:%M:%S') + " - Successfully Sent the '" + notification.title + "' to " + str(count) + " Users!")

	# If the Notifications list is Empty.
	if not notifications:
		# Debug
		print(datetime.now().strftime('%d/%m/%Y %H:%M:%S') + " - No Notifications needed to be Sent!")
	else:
		# Debug
		print(datetime.now().strftime('%d/%m/%Y %H:%M:%S') + " - Successfully Sent All Notifications!")
	pass