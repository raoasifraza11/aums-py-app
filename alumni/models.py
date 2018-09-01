from django.db import models

COURSES_CHOICES = (
    ('bscs','BSCS'),
    ('bsse', 'BSSE'),
    ('beee','BEEE'),
    ('bece','BECE'),
    ('pharmD','PharmD'),
)

OCCUPATION_CHOICES = (
    ('student','STUDNENT'),
    ('job', 'JOB'),
    ('business','BUSINESS'),
)
class Alumni(models.Model):
    email = models.CharField(max_length=200)
    full_Name = models.CharField(max_length=200)
    registration_number = models.IntegerField()
    courses = models.CharField(max_length=6, choices=COURSES_CHOICES)
    year_semester = models.CharField(max_length=200)
    occupation = models.CharField(max_length=200,choices=OCCUPATION_CHOICES)
    job_title = models.CharField(max_length=200)

