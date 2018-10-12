# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2018-09-27 18:30
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('slider', '0033_auto_20180927_2318'),
    ]

    operations = [
        migrations.CreateModel(
            name='DateSheet',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('link', models.CharField(max_length=120)),
                ('title', models.CharField(max_length=120)),
            ],
            options={
                'verbose_name': 'DateSheet',
                'verbose_name_plural': 'DateSheets',
            },
        ),
        migrations.RemoveField(
            model_name='acdamic_calander_graduate',
            name='visibality',
        ),
    ]
