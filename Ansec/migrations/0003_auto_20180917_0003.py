# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2018-09-16 19:03
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Ansec', '0002_applynow_background_orgnizers'),
    ]

    operations = [
        migrations.AlterField(
            model_name='orgnizers',
            name='phone_no',
            field=models.IntegerField(),
        ),
    ]
