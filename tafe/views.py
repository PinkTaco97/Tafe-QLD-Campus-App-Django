from datetime import datetime
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
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
	queryset = Event.objects.filter(
		listed=True
	).filter(
		eventStart__gte=datetime.today()
	)
	serializer = EventSerializer(queryset, many=True)
	return Response(serializer.data)

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