from django.contrib import admin
from .models import Slider,Staff,Event,Fees,Acdamic_Calander,New
# Register your models here.

class StaffAdmin(admin.ModelAdmin):

    list_display = ["name"]
    list_display_links = ["name"]
    class Meta:
        model = Staff

class EventAdmin(admin.ModelAdmin):

    list_display = ["title"]
    list_display_links = ["title"]
    class Meta:
        model = Event

class FeesAdmin(admin.ModelAdmin):

    list_display = ["program_name","fees"]
    list_display_links = ["program_name"]
    class Meta:
        model = Fees

class Acdamic_CalanderAdmin(admin.ModelAdmin):

    list_display = ["link"]
    list_display_links = ["link"]
    class Meta:
        model = Acdamic_Calander

class NewsAdmin(admin.ModelAdmin):

    list_display = ["title","picture"]
    list_display_links = ["title"]
    class Meta:
        model = New

admin.site.register(Slider)
admin.site.register(Fees,FeesAdmin)
admin.site.register(New,NewsAdmin)
admin.site.register(Acdamic_Calander,Acdamic_CalanderAdmin)
#admin.site.register(Student)
#admin.site.register(Courses,CourseskAdmin)
admin.site.register(Staff,StaffAdmin)
admin.site.register(Event,EventAdmin)
#admin.site.register(Facebook,FacebookAdmin)