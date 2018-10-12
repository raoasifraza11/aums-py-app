# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2018-09-22 17:48
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('slider', '0030_auto_20180922_2223'),
    ]

    operations = [
        migrations.AlterField(
            model_name='permission',
            name='title',
            field=models.CharField(choices=[('HEC', 'HEC'), ('Electrical', 'Electrical'), ('Civil', 'Civil'), ('Computing', 'Computing'), ('Pharmacy', 'Pharmacy')], default='HEC', max_length=120),
        ),
    ]