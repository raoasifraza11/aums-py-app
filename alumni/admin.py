from django.contrib import admin
from .models import Alumni

class AlumniAdmin(admin.ModelAdmin):

    list_display = ["full_Name"]
    list_display_links = ["full_Name"]
    class Meta:
        model = Alumni

admin.site.register(Alumni,AlumniAdmin)

