from django.shortcuts import render
from django.views.generic import CreateView
from .models import Alumni
from django.contrib import messages

class AlumniCreate(CreateView):
    template_name = 'alumni_form.html'
    model = Alumni
    fields = ['email','full_Name','registration_number','courses','year_semester','occupation','job_title']
