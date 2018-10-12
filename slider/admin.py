from django.contrib import admin
from .models import Slider,Staff,Event,Fees,Acdamic_Calander,New,Timetable,Online_Admission,CLO,Message,TimetableGraduate,Download,Permission,Acdamic_Calander_Graduate,DateSheet,Banner
from django.utils.html import format_html

admin.site.site_header = "Dashboard"
admin.site.site_title = "Dashoard"

class BannerAdmin(admin.ModelAdmin):

    def image_tag(self, obj):
        return format_html('<img height="170" width="170" src="{}" />'.format(obj.image.url))

    image_tag.short_description = 'Image'

    list_display = ['image_tag',]

class StaffAdmin(admin.ModelAdmin):
    def image_tag(self, obj):
        return format_html('<img class="img-rounded" height="50" width="50" src="{}" />'.format(obj.profile.url))

    image_tag.short_description = 'preview'

    search_fields = ['name', 'department',]
    list_display = ["name","department",'image_tag',]
    list_display_links = ["name"]
    class Meta:
        model = Staff

class EventAdmin(admin.ModelAdmin):
    def image_tag(self, obj):
        return format_html('<img height="170" width="170" src="{}" />'.format(obj.picture.url))

    image_tag.short_description = 'preview'

    list_display = ["title","image_tag"]
    list_display_links = ["title"]
    class Meta:
        model = Event

class FeesAdmin(admin.ModelAdmin):

    search_fields = ['program_name', 'fees',]
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

    def image_tag(self, obj):
        return format_html('<img height="170" width="170" src="{}" />'.format(obj.picture.url))

    image_tag.short_description = 'preview'

    list_display = ["title","image_tag"]
    list_display_links = ["title"]
    class Meta:
        model = New

admin.site.register(Slider)
admin.site.register(CLO)
admin.site.register(Banner,BannerAdmin)
admin.site.register(Acdamic_Calander_Graduate)
admin.site.register(Download)
admin.site.register(DateSheet)
admin.site.register(Permission)
admin.site.register(Message)
admin.site.register(TimetableGraduate)
admin.site.register(Fees,FeesAdmin)
admin.site.register(New,NewsAdmin)
admin.site.register(Acdamic_Calander,Acdamic_CalanderAdmin)
admin.site.register(Timetable)
admin.site.register(Online_Admission)
admin.site.register(Staff,StaffAdmin)
admin.site.register(Event,EventAdmin)