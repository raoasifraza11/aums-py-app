# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2018-09-27 18:32
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('slider', '0034_auto_20180927_2330'),
    ]

    operations = [
        migrations.AddField(
            model_name='datesheet',
            name='visibility',
            field=models.BooleanField(default=False),
        ),
    ]