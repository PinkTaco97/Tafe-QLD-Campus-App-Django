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
			'campus',
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
		]

class FacilitySerializer(serializers.ModelSerializer):
	class Meta:
		model = Facility
		fields = [
			'id',
			'campus',
			'name',
			'description',
			'address',
            'image',
            'menuLink',
            'bookingLink',
		]

class FacilityHoursSerializer(serializers.ModelSerializer):
	class Meta:
		model = FacilityHours
		fields = [
			'campus',
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

class IndustrySerializer(serializers.ModelSerializer):
	class Meta:
		model = Industry
		fields = [
			'id',
			'name',
		]

class StudentSerializer(serializers.ModelSerializer):
	class Meta:
		model = Student
		fields = [
			'id',
			'type',
			'industry',
			'region',
			'campus',
			'notificationToken',
		]

class RegisterSerializer(serializers.ModelSerializer):
	email = serializers.EmailField(
		required = True,
		validators=[UniqueValidator(queryset=User.objects.all())]
	)
	password = serializers.CharField(write_only=True, required=True)

	class Meta:
		model = User
		fields = ('email', 'password', 'first_name')
		extra_kwargs = {
			'first_name': {'required': True},
		}
	
	def validate(self, values):
		if values['email'] == None:
			raise serializers.ValidationError({"email": "Email field can't be empty."})
		elif "@" not in values['email'] and ".com" not in values['email']:
			raise serializers.ValidationError({"email": "Email field must contain @ and .com"})
		elif values['password'] == None:
			raise serializers.ValidationError({"password": "Password field can't be empty."})
		return values
	
	def create (self, validated_data):
		user = User.objects.create(
			email=validated_data['email'],
			first_name=validated_data['first_name'],
		)

		user.set_password(validated_data['password'])
		user.save()
		return user

	



