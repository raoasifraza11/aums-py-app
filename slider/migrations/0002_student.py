# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2018-02-01 18:43
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('slider', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Student',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=120)),
                ('rollno', models.IntegerField(max_length=120)),
                ('department', models.CharField(max_length=120)),
            ],
        ),
    ]
