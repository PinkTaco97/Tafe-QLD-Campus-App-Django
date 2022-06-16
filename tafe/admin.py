from django.utils.html import format_html
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
		'name',
		'region',
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

@admin.register(models.Point)
class PointAdmin(admin.ModelAdmin):
	list_display = ['title', 'description', 'preview_image', 'generate_qr_code']
	list_per_page = 10

	def generate_qr_code(self, point):
		link = "https://quickchart.io/qr?size=500&text="+point.code
		return format_html('<a href="{}" target="_blank">Generate QR Code</a>', link)

	def preview_image(self, point):
		return format_html('<a href="{}" target="_blank">Preview Image</a>', point.image)

@admin.register(models.Goal)
class GoalAdmin(admin.ModelAdmin):
	list_display = [
		'title',
		'description',
		'infoLink',
		'listed',
	]
	list_per_page = 10