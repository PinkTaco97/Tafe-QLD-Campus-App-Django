from pkg_resources import require
from rest_framework import serializers
from rest_framework.validators import UniqueValidator
from tafe.models import *

class RegionSerializer(serializers.ModelSerializer):
	class Meta:
		model = Region
		fields = [
			'id',
			'name',
		]

class CampusHoursSerializer(serializers.ModelSerializer):
	class Meta:
		model = CampusHours
		fields = [
			'monOpen',
			'monClose',
			'tueOpen',
            'tueClose',
            'wedOpen',
            'wedClose',
            'thurOpen',
            'thurClose',
            'friOpen',
            'friClose',
            'satOpen',
            'satClose',
            'sunOpen',
            'sunClose',
		]

class CampusSerializer(serializers.ModelSerializer):
	
	hours = CampusHoursSerializer()
	
	class Meta:
		model = Campus
		fields = [
			'id',
			'region',
			'name',
			'description',
			'address',
			'latitude',
			'longitude',
			'hours',
		]
	
class FacilityHoursSerializer(serializers.ModelSerializer):
	class Meta:
		model = FacilityHours
		fields = [
			'monOpen',
			'monClose',
			'tueOpen',
            'tueClose',
            'wedOpen',
            'wedClose',
            'thurOpen',
            'thurClose',
            'friOpen',
            'friClose',
            'satOpen',
            'satClose',
            'sunOpen',
            'sunClose',
		]	

class FacilitySerializer(serializers.ModelSerializer):

	hours = FacilityHoursSerializer()

	class Meta:
		model = Facility
		fields = [
			'id',
			'campus',
			'name',
			'description',
			'address',
			'hours',
            'image',
            'link1Title',
            'link1URL',
			'link2Title',
            'link2URL',
		]

class EventSerializer(serializers.ModelSerializer):
	class Meta:
		model = Event
		fields = [
			'id',
			'title',
			'description',
			'content',
			'location',
            'registerLink',
            'image',
            'eventStart',
            'eventEnd',
		]

class GoalSerializer(serializers.ModelSerializer):
	class Meta:
		model = Goal
		fields = [
			'id',
			'title',
			'description',
			'infoLink',
			'image',
            'icon',
            'image',
		]

class IndustrySerializer(serializers.ModelSerializer):
	class Meta:
		model = Industry
		fields = [
			'id',
			'name',
		]

class ProfileSerializer(serializers.ModelSerializer):
	class Meta:
		model = Profile
		fields = [
			'id',
			'type',
			'industry',
			'region',
			'campus',
			'authUser',
			'notificationToken',
		]

class PointSerializer(serializers.ModelSerializer):
	class Meta:
		model = Point
		fields = ['title', 'description', 'image']
