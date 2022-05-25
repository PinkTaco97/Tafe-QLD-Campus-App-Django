from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Region(models.Model):
	name = models.CharField(max_length=255, unique=True)
	listed = models.BooleanField(default=True)

	def __str__(self) -> str:
		return self.name

class Campus(models.Model):
	name = models.CharField(max_length=255, unique=True)
	description = models.TextField(blank=True)
	address = models.CharField(max_length=255,blank=True)
	phone = models.CharField(max_length=255,blank=True)
	region = models.ForeignKey(
		Region,
		on_delete=models.CASCADE,
	)
	latitude = models.DecimalField(max_digits=8, decimal_places=6)
	longitude = models.DecimalField(max_digits=9, decimal_places=6)
	listed = models.BooleanField(default=True)

	def __str__(self) -> str:
		return self.name

class CampusHours(models.Model):
	campus = models.ForeignKey(
		Campus,
		on_delete=models.CASCADE,
	)
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

class Facility(models.Model):
	name = models.CharField(max_length=255, unique=True)
	description = models.TextField(blank=True)
	address = models.CharField(max_length=255,blank=True)
	phone = models.CharField(max_length=255,blank=True)
	image = models.CharField(max_length=255,blank=True)
	menuLink = models.CharField(max_length=255,blank=True)
	bookingLink = models.CharField(max_length=255,blank=True)
	campus = models.ForeignKey(
		Campus,
		on_delete=models.CASCADE,
	)
	listed = models.BooleanField(default=True)

	def __str__(self) -> str:
		return self.name

class FacilityHours(models.Model):
	facility = models.ForeignKey(
		Facility,
		on_delete=models.CASCADE,
	)
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

class Industry(models.Model):
	name = models.CharField(max_length=255, unique=True)
	listed = models.BooleanField(default=True)

	def __str__(self) -> str:
		return self.name

class Student(models.Model):
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
	authUser = models.OneToOneField(User, on_delete=models.CASCADE, blank=True)
	timeCreated = models.DateTimeField(auto_now_add=True)
	notificationToken  = models.CharField(max_length=255, blank=True)

class Notification(models.Model):
	TYPE_INDUSTRY = 'I'
	TYPE_REGION = 'R'
	TYPE_CAMPUS = 'C'
	TYPE_CHOICES = [
		(TYPE_INDUSTRY, 'Industry'),
		(TYPE_REGION, 'Region'),
		(TYPE_CAMPUS, 'Campus'),
	]
	type = models.CharField(max_length=1, choices=TYPE_CHOICES, default=TYPE_CAMPUS)
	title = models.CharField(max_length=255)
	body = models.CharField(max_length=255)
	data  = models.TextField()
	sendTime = models.DateTimeField()
	industry = models.ForeignKey(
		Industry,
		on_delete=models.CASCADE,
	)
	region = models.ForeignKey(
		Region,
		on_delete=models.CASCADE,
	)
	campus = models.ForeignKey(
		Campus,
		on_delete=models.CASCADE,
	)