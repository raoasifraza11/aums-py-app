# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2018-09-03 13:54
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('slider', '0017_auto_20180903_1849'),
    ]

    operations = [
        migrations.AlterField(
            model_name='staff',
            name='department',
            field=models.CharField(choices=[('computing', 'computing'), ('electrical', 'electrical'), ('civil', 'civil'), ('life-scienecs', 'life-scienecs'), ('management-sciences', 'management-sciences')], default='computing', max_length=300),
        ),
    ]