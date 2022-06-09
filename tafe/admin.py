from django.contrib import admin
from . import models

# Register your models here.
@admin.register(models.Region)
class RegionAdmin(admin.ModelAdmin):
	list_display = [
		'name',
		'listed',
	]
	list_per_page = 10

@admin.register(models.Campus)
class CampusAdmin(admin.ModelAdmin):
	list_display = [
		'region',
		'name',
		'address',
		'phone',
		'listed',
	]
	list_per_page = 10

@admin.register(models.CampusHours)
class CampusHourAdmin(admin.ModelAdmin):
	list_display = [
		'campus',
	]
	list_per_page = 10

@admin.register(models.Facility)
class FacilityAdmin(admin.ModelAdmin):
	list_display = [
		'campus',
		'name',
		'address',
		'phone',
		'listed',
	]
	list_per_page = 10

@admin.register(models.FacilityHours)
class FacilityHourAdmin(admin.ModelAdmin):
	list_display = [
		'facility',
	]
	list_per_page = 10

@admin.register(models.Event)
class EventAdmin(admin.ModelAdmin):
	list_display = [
		'title',
		'location',
		'eventStart',
		'eventEnd',
		'listed',
	]
	list_per_page = 10

@admin.register(models.Industry)
class IndustryAdmin(admin.ModelAdmin):
	list_display = [
		'name',
		'listed',
	]
	list_per_page = 10

@admin.register(models.Profile)
class ProfileAdmin(admin.ModelAdmin):
	list_display = [
		'type',
		'industry',
		'region',
		'campus',
	]
	list_per_page = 10

@admin.register(models.Notification)
class NotificationAdmin(admin.ModelAdmin):
	list_display = [
		'type',
		'title',
		'body',
		'sendTime',
		'sent',
	]
	list_per_page = 10