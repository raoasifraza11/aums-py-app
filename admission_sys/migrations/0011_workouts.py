# Generated by Django 2.0 on 2019-04-26 07:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('admission_sys', '0010_delete_events'),
    ]

    operations = [
        migrations.CreateModel(
            name='Workouts',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('mresult', models.CharField(max_length=255)),
                ('fresult', models.CharField(max_length=255)),
            ],
        ),
    ]
