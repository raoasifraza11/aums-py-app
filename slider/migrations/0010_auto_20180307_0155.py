# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2018-03-06 20:55
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('slider', '0009_auto_20180307_0145'),
    ]

    operations = [
        migrations.AlterField(
            model_name='courses',
            name='semester',
            field=models.CharField(max_length=120),
        ),
    ]
