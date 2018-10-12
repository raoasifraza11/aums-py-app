from django.db import models

class Events(models.Model):
    picture = models.ImageField(upload_to='images')
    title = models.CharField(max_length=120)
    description = models.CharField(max_length=120)
    timestamp = models.DateTimeField()
    link = models.CharField(max_length=300,default='#')

    class Meta:
        verbose_name = 'Event'
        verbose_name_plural = 'Events'

    def __str__(self):
        return self.title

class ApplyNow(models.Model):
    link = models.CharField(max_length=120)

    class Meta:
        verbose_name = 'Apply Now'
        verbose_name_plural = 'Apply Now'

    def __str__(self):
        return self.link
    
    def __unicode__(self):
        return self.link

class Background(models.Model):
    picture = models.ImageField(upload_to='images')
    title = models.CharField(max_length=120)
    description = models.CharField(max_length=120)
    timestamp = models.DateTimeField()
    link = models.CharField(max_length=300,default='#')

    class Meta:
        verbose_name = 'Background'
        verbose_name_plural = 'Backgrounds'

    def __str__(self):
        return self.title

class Orgnizers(models.Model):
    
    title = models.CharField(max_length=120)
    phone_no = models.IntegerField()
    timestamp = models.DateTimeField()

    class Meta:
        verbose_name = 'Orgnizer'
        verbose_name_plural = 'Orgnizers'

    def __str__(self):
        return self.title