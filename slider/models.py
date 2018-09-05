from django.db import models
Departments = [
 ('computing', 'computing'),
 ('electrical', 'electrical'),
 ('civil', 'civil'),
 ('life-scienecs', 'life-scienecs'),
 ('management-sciences', 'management-sciences'),
 ]
class Slider(models.Model):
    slider1 = models.ImageField(upload_to='images')
    slider2 = models.ImageField(upload_to='images')
    slider3 = models.ImageField(upload_to='images')


class Staff(models.Model):
    name = models.CharField(max_length=120)
    designation  =models.CharField(max_length=120)
    qualification = models.CharField(max_length=120)
    profile = models.ImageField(upload_to='images')
    department = models.CharField(max_length=300,default='computing',choices=Departments)
    twiter = models.CharField(max_length=300,default='null')

    def __str__(self):
        return self.name +'-'+ self.designation

class Event(models.Model):
    picture = models.ImageField(upload_to='images')
    title = models.CharField(max_length=120)
    description = models.CharField(max_length=120)
    timestamp = models.DateTimeField()

    def __str__(self):
        return self.title +'-'+ self.description

class Fees(models.Model):
    program_name = models.CharField(max_length=120)
    fees = models.IntegerField()

    def __str__(self):
        return self.program_name

class Acdamic_Calander(models.Model):
    link = models.CharField(max_length=120)

    def __str__(self):
        return self.link
    
    def __unicode__(self):
        return self.link

class Timetable(models.Model):
    link = models.CharField(max_length=120)

    def __str__(self):
        return self.link
    
    def __unicode__(self):
        return self.link

class New(models.Model):
    picture = models.ImageField(upload_to='images')
    title = models.CharField(max_length=120)
    description = models.CharField(max_length=120)
    timestamp = models.DateTimeField()
    link = models.CharField(max_length=300,default='#')
    def __str__(self):
        return self.title



