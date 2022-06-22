from datetime import datetime
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response

from exponent_server_sdk import (
    DeviceNotRegisteredError,
    PushClient,
    PushMessage,
    PushServerError,
    PushTicketError,
)
from requests.exceptions import ConnectionError, HTTPError

from .models import *
from .serializers import *
from tafe import serializers

# Returns a list of all Regions.
@api_view(['GET'])
def regions_list(request):
	try:
		regions = Region.objects.filter(
			listed=True
		)
		serializer = RegionSerializer(regions, many=True)
		return Response(serializer.data)
	except Region.DoesNotExist:
		return Response(status = status.HTTP_404_NOT_FOUND)

# Returns a list of all Campuses.
@api_view(['GET'])
def campus_list(request):
	try:
		campuses = Campus.objects.filter(
			listed=True
		)
		serializer = CampusSerializer(campuses, many=True)
		return Response(serializer.data)
	except Campus.DoesNotExist:
		return Response(status = status.HTTP_404_NOT_FOUND)

# Returns Information about a Campus.
@api_view(['GET'])
def campus_detail(request, id):
	try:
		campus = Campus.objects.get(id=id)
		serializer = CampusSerializer(campus)
		return Response(serializer.data)
	except Campus.DoesNotExist:
		return Response(status = status.HTTP_404_NOT_FOUND)

# Returns the Trading Hours of a Campus
@api_view(['GET'])
def campus_hours(request, campusID):
    try:
        campusHours = CampusHours.objects.get(campus=campusID)
        serializer = CampusHoursSerializer(campusHours)
        return Response(serializer.data)
    except CampusHours.DoesNotExist:
        return Response(status = status.HTTP_404_NOT_FOUND)

# Returns a list of all Campuses from a Region.
@api_view(['GET'])
def region_campuses(request, regionID):
	try:
		campusRegions = Campus.objects.filter(
			region=regionID
		).filter(
			listed=True
		)
		serializer = CampusSerializer(campusRegions, many=True)
		return Response(serializer.data)
	except Campus.DoesNotExist:
		return Response(status = status.HTTP_404_NOT_FOUND)

# Returns a list of Resturants for a given Campus.
@api_view(['GET'])
def facility_list(request, campusID):
	try:
		resturants = Facility.objects.filter(
			campus=campusID
		).filter(
			listed=True
		)
		serializer = FacilitySerializer(resturants, many=True)
		return Response(serializer.data)
	except Facility.DoesNotExist:
		return Response(status = status.HTTP_404_NOT_FOUND)

# Returns the Trading Hours of a Resturant
@api_view(['GET'])
def facility_hours(request, resturantID):
    try:
        facilityHours = FacilityHours.objects.get(campus=resturantID)
        serializer = FacilityHoursSerializer(facilityHours)
        return Response(serializer.data)
    except FacilityHours.DoesNotExist:
        return Response(status = status.HTTP_404_NOT_FOUND)

# Returns a list of ALL Events.
@api_view(['GET'])
def events_list(request):
	queryset = Event.objects.all()
	serializer = EventSerializer(queryset, many=True)
	return Response(serializer.data)

# Returns a list of Upcoming Events.
@api_view(['GET'])
def events_upcoming(request):
	# queryset = Event.objects.filter(
	# 	listed=True
	# ).filter(
	# 	eventStart__gte=datetime.today()
	# )
	queryset = Event.objects.filter(
		listed=True,
		eventStart__gte=datetime.today()
	)
	serializer = EventSerializer(queryset, many=True)
	return Response(serializer.data)

# Returns a list of ALL SDG's.
@api_view(['GET'])
def goal_list(request):
	queryset = Goal.objects.filter(
		listed=True
	)
	serializer = GoalSerializer(queryset, many=True)
	return Response(serializer.data)

# Returns a list of ALL Industries.
@api_view(['GET'])
def industry_list(request):
	queryset = Industry.objects.filter(
		listed=True
	)
	serializer = IndustrySerializer(queryset, many=True)
	return Response(serializer.data)

# Creates a Profile in the database.
@api_view(['POST'])
def create_profile(request):

	# Deserialise Profile Data 
	serializer = ProfileSerializer(data=request.data)

	# Check whether the POSTed data is valid.
	if serializer.is_valid():

		# Save the new Profile in the Database.
		serializer.save()
		return Response(serializer.data, status=status.HTTP_201_CREATED)
	else:
		return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

# Sends A Notification to a User.
@api_view(['POST'])
def notification_sendall(request):

	# Whether there was an Error.
	wasError = False

	# Reference to the Error.
	error: PushServerError

	# Count of Notifications Sent.
	count = 0

	# Validation.
	if (request.data["title"] == None):
		return Response("Notification needs a title", status=status.HTTP_400_BAD_REQUEST)
	elif (request.data["body"] == None):
		return Response("Notification needs a body", status=status.HTTP_400_BAD_REQUEST)

	# Get all profiles from the Database.
	profiles = Profile.objects.all()

	# Foreach Profile
	for profile in profiles:
		try:
			# If the current profile dosnt have a notification token set.
			if(profile.notificationToken == None):
				continue
			
			# Send a Notification to the User.
			PushClient().publish(PushMessage(
				to = profile.notificationToken,
				title = request.data["title"],
				body = request.data["body"],
				sound = "default"
			))

			# Increament the count.
			count += 1

		# If there was an Error.
		except PushServerError as e:

			# Save the Error.
			error = e

			# Print the Error to the Console.
			print(e)

	# If there was an Error.
	if(wasError):
		# Return the Error.
		return Response(error, status=status.HTTP_400_BAD_REQUEST)
	else:
		# Return the amount of Notifications sent.
		response = str(count) + " notifications sent"
		return Response(response, status=status.HTTP_200_OK)

@api_view(['GET'])
def points_list(request):
	queryset = Point.objects.all()
	serializer = PointSerializer(queryset, many=True)
	return Response(serializer.data)
	
@api_view(['GET'])
def point_detail(request, id):
	try:
		point = Point.objects.get(code=id)
		serializer = PointSerializer(point)
		return Response(serializer.data)
	except Point.DoesNotExist:
		return Response(status = status.HTTP_404_NOT_FOUND)