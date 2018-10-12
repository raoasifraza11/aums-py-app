from django.db import models
Departments = [
    ('computing', 'computing'),
    ('electrical', 'electrical'),
    ('civil', 'civil'),
    ('life-scienecs', 'life-scienecs'),
    ('management-sciences', 'management-sciences'),
]

Accradations = [
    ('HEC', 'HEC'),
    ('Electrical', 'Electrical'),
    ('Civil', 'Civil'),
    ('Computing', 'Computing'),
    ('Pharmacy', 'Pharmacy'),
]


class Slider(models.Model):
    slider1 = models.ImageField(upload_to='images')
    slider2 = models.ImageField(upload_to='images')
    slider3 = models.ImageField(upload_to='images')


class Staff(models.Model):
    name = models.CharField(max_length=120)
    designation = models.CharField(max_length=120)
    qualification = models.CharField(max_length=120)
    profile = models.ImageField(upload_to='images')
    department = models.CharField(
        max_length=300, default='computing', choices=Departments)

    def __str__(self):
        return self.name + '-' + self.designation


class Event(models.Model):
    picture = models.ImageField(upload_to='images')
    title = models.CharField(max_length=120)
    description = models.CharField(max_length=120)
    timestamp = models.DateTimeField()

    def __str__(self):
        return self.title + '-' + self.description


class Fees(models.Model):
    program_name = models.CharField(max_length=120)
    fees = models.IntegerField()

    class Meta:
        verbose_name = 'Fee'
        verbose_name_plural = 'Fees'

    def __str__(self):
        return self.program_name


class Acdamic_Calander(models.Model):
    link = models.CharField(max_length=120)

    class Meta:
        verbose_name = 'Acdamic Calander'
        verbose_name_plural = 'Acdamic Calander'

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


class TimetableGraduate(models.Model):
    link = models.CharField(max_length=120)

    class Meta:
        verbose_name = 'Timetable Graduate'
        verbose_name_plural = 'Timetable Graduates'

    def __str__(self):
        return self.link

    def __unicode__(self):
        return self.link


class New(models.Model):
    picture = models.ImageField(upload_to='images')
    title = models.CharField(max_length=120)
    description = models.CharField(max_length=120)
    timestamp = models.DateTimeField()
    link = models.CharField(max_length=300, default='#')

    class Meta:
        verbose_name = 'News'
        verbose_name_plural = 'News'

    def __str__(self):
        return self.title


class Online_Admission(models.Model):
    link = models.CharField(max_length=120)

    class Meta:
        verbose_name = 'Online Admission'
        verbose_name_plural = 'Online Admissions'

    def __str__(self):
        return self.link

    def __unicode__(self):
        return self.link


class CLO(models.Model):
    link = models.CharField(max_length=120)
    title = models.CharField(max_length=120)

    class Meta:
        verbose_name = 'CLO'
        verbose_name_plural = 'CLOs'

    def __str__(self):
        return self.title

    def __unicode__(self):
        return self.title


class Acdamic_Calander_Graduate(models.Model):
    link = models.CharField(max_length=120)
    title = models.CharField(max_length=120)

    class Meta:
        verbose_name = 'Acdamic Calander Graduate'
        verbose_name_plural = 'Acdamic Calander Graduates'

    def __str__(self):
        return self.title

    def __unicode__(self):
        return self.title


class DateSheet(models.Model):
    link = models.CharField(max_length=120)
    title = models.CharField(max_length=120)
    visibility = models.BooleanField(default=False)

    class Meta:
        verbose_name = 'DateSheet'
        verbose_name_plural = 'DateSheets'

    def __str__(self):
        return self.title

    def __unicode__(self):
        return self.title


class Message(models.Model):
    message = models.CharField(max_length=120)

    class Meta:
        verbose_name = 'Message'
        verbose_name_plural = 'Messages'

    def __str__(self):
        return self.message

    def __unicode__(self):
        return self.message


class Download(models.Model):
    title = models.CharField(max_length=120)
    file = models.FileField(upload_to='downloads')

    class Meta:
        verbose_name = 'Download'
        verbose_name_plural = 'Downloads'

    def __str__(self):
        return self.title

    def __unicode__(self):
        return self.title


class Permission(models.Model):
    title = models.CharField(
        max_length=120, default='HEC', choices=Accradations)
    file = models.FileField(upload_to='permissions')

    class Meta:
        verbose_name = 'Permission Letter'
        verbose_name_plural = 'Permission Letters'

    def __str__(self):
        return self.title

    def __unicode__(self):
        return self.title


class Banner(models.Model):
    image = models.ImageField(upload_to='images')
