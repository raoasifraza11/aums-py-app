# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2018-06-27 13:08
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('slider', '0014_acdamic_calander'),
    ]

    operations = [
        migrations.CreateModel(
            name='New',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('picture', models.ImageField(upload_to='images')),
                ('title', models.CharField(max_length=120)),
                ('description', models.CharField(max_length=120)),
                ('timestamp', models.DateTimeField()),
            ],
        ),
    ]
