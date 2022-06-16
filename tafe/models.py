import sys
from django.db import models
from django.conf import settings

# Create your models here.

# Table to hold all of the Points of Intrests.
class Point(models.Model):
	title = models.CharField(max_length=255, unique=True)
	description = models.TextField()
	image = models.CharField(max_length=255, blank=True)
	code = models.CharField(max_length=255, blank=True)
	last_update = models.DateTimeField(auto_now=True)
	time_created = models.DateTimeField(auto_now_add=True)

	def save(self, *args, **kwargs):
		self.code = hash(self.title) % ((sys.maxsize + 1) * 2)
		super().save(*args, **kwargs)
		

	def __str__(self) -> str:
		return self.title

# Table to hold all of the Regions e.g. Gold Coast, Greater Brisbane.
class Region(models.Model):
	name = models.CharField(max_length=255, unique=True)
	listed = models.BooleanField(default=True)

	def __str__(self) -> str:
		return self.name

# Table to hold all of the Camnpus Hours.
class CampusHours(models.Model):
	monOpen = models.TimeField()
	monClose = models.TimeField()
	tueOpen = models.TimeField()
	tueClose = models.TimeField()
	wedOpen = models.TimeField()
	wedClose = models.TimeField()
	thurOpen = models.TimeField()
	thurClose = models.TimeField()
	friOpen = models.TimeField()
	friClose = models.TimeField()
	satOpen = models.TimeField()
	satClose = models.TimeField()
	sunOpen = models.TimeField()
	sunClose = models.TimeField()

# Table to hold all of the Campus Information. e.g. Robina, Coomera.
class Campus(models.Model):
	name = models.CharField(max_length=255, unique=True)
	description = models.TextField(blank=True)
	address = models.CharField(max_length=255,blank=True)
	phone = models.CharField(max_length=255,blank=True)
	hours = models.OneToOneField(
		CampusHours,
		on_delete=models.CASCADE,
	)
	region = models.ForeignKey(
		Region,
		on_delete=models.PROTECT,
	)
	latitude = models.DecimalField(max_digits=8, decimal_places=6)
	longitude = models.DecimalField(max_digits=9, decimal_places=6)
	listed = models.BooleanField(default=True)

	def __str__(self) -> str:
		return self.name

# Table to hold all of the Facility Hours.
class FacilityHours(models.Model):
	monOpen = models.TimeField()
	monClose = models.TimeField()
	tueOpen = models.TimeField()
	tueClose = models.TimeField()
	wedOpen = models.TimeField()
	wedClose = models.TimeField()
	thurOpen = models.TimeField()
	thurClose = models.TimeField()
	friOpen = models.TimeField()
	friClose = models.TimeField()
	satOpen = models.TimeField()
	satClose = models.TimeField()
	sunOpen = models.TimeField()
	sunClose = models.TimeField()

# Table to hold all of the Facilities. e.g. Cafe, Restaurant, Gym.
class Facility(models.Model):
	name = models.CharField(max_length=255, unique=True)
	description = models.TextField(blank=True)
	address = models.CharField(max_length=255,blank=True)
	phone = models.CharField(max_length=255,blank=True)
	hours = models.OneToOneField(
		FacilityHours,
		on_delete=models.CASCADE,
	)
	image = models.CharField(max_length=255,blank=True)
	link1Title = models.CharField(max_length=255,blank=True)
	link1URL = models.CharField(max_length=255,blank=True)
	link2Title = models.CharField(max_length=255,blank=True)
	link2URL = models.CharField(max_length=255,blank=True)
	campus = models.ForeignKey(
		Campus,
		on_delete=models.CASCADE,
	)
	listed = models.BooleanField(default=True)

	def __str__(self) -> str:
		return self.name

# Table to hold all of the event information.
class Event(models.Model):
	title = models.CharField(max_length=255)
	description = models.TextField(blank=True)
	content  = models.TextField(blank=True)
	location = models.CharField(max_length=255)
	registerLink = models.CharField(max_length=255)
	image = models.CharField(max_length=255, blank=True)
	eventStart = models.DateTimeField()
	eventEnd = models.DateTimeField()
	lastUpdate = models.DateTimeField(auto_now=True)
	timeCreated = models.DateTimeField(auto_now_add=True)
	listed = models.BooleanField(default=True)

# Table to hold all of the SDG information.
class Goal(models.Model):
	title = models.CharField(max_length=255)
	description = models.TextField(blank=True)
	infoLink = models.CharField(max_length=255)
	image = models.CharField(max_length=255, blank=True)
	icon = models.CharField(max_length=255, blank=True)
	lastUpdate = models.DateTimeField(auto_now=True)
	timeCreated = models.DateTimeField(auto_now_add=True)
	listed = models.BooleanField(default=True)

# Table to hold all of the Industries. e.g. Business, Information Technology.
class Industry(models.Model):
	name = models.CharField(max_length=255, unique=True)
	listed = models.BooleanField(default=True)

	def __str__(self) -> str:
		return self.name

# Table to hold all of the User Profile data.
class Profile(models.Model):
	TYPE_STUDENT = 'S'
	TYPE_PARENT = 'P'
	TYPE_TEACHER = 'T'
	TYPE_CAREER_STARTER = 'CS'
	TYPE_CAREER_CHANGER = 'CC'
	TYPE_CHOICES = [
		(TYPE_STUDENT, 'Student'),
		(TYPE_PARENT, 'Parent/Guardian'),
		(TYPE_TEACHER, 'Teacher'),
		(TYPE_CAREER_STARTER, 'Career Starter'),
		(TYPE_CAREER_CHANGER, 'Career Changer'),
	]
	type = models.CharField(max_length=2, choices=TYPE_CHOICES, default=TYPE_STUDENT)
	industry = models.ForeignKey(
		Industry,
		on_delete=models.PROTECT,
	)
	region = models.ForeignKey(
		Region,
		on_delete=models.PROTECT,
	)
	campus = models.ForeignKey(
		Campus,
		on_delete=models.PROTECT,
	)
	platform = models.CharField(max_length=10, blank=True)
	authUser = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, blank=True,null=True)
	timeCreated = models.DateTimeField(auto_now_add=True)
	notificationToken = models.CharField(max_length=255, blank=True)


# Table to hold all of the Push Notifications.
class Notification(models.Model):
	TYPE_ALL = 'A'
	TYPE_INDUSTRY = 'I'
	TYPE_REGION = 'R'
	TYPE_CAMPUS = 'C'
	TYPE_CHOICES = [
		(TYPE_ALL, 'All'),
		(TYPE_INDUSTRY, 'Industry'),
		(TYPE_REGION, 'Region'),
		(TYPE_CAMPUS, 'Campus'),
	]
	type = models.CharField(max_length=1, choices=TYPE_CHOICES, default=TYPE_CAMPUS)
	title = models.CharField(max_length=255)
	body = models.CharField(max_length=255)
	data  = models.TextField(blank=True)
	sendTime = models.DateTimeField()
	sent = models.BooleanField(default=False)
	industry = models.ForeignKey(
		Industry,
		on_delete=models.CASCADE,
		blank=True,
		null=True,
	)
	region = models.ForeignKey(
		Region,
		on_delete=models.CASCADE,
		blank=True,
		null=True,
	)
	campus = models.ForeignKey(
		Campus,
		on_delete=models.CASCADE,
		blank=True,
		null=True,
	)

	def __str__(self) -> str:
		return self.title + " (" + self.type + ")"