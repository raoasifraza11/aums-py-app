# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2018-02-12 07:24
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('slider', '0003_staff'),
    ]

    operations = [
        migrations.AddField(
            model_name='staff',
            name='linkedin',
            field=models.CharField(default='null', max_length=300),
        ),
        migrations.AddField(
            model_name='staff',
            name='twiter',
            field=models.CharField(default='null', max_length=300),
        ),
    ]
