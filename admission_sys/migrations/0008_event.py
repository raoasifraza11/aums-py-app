# Generated by Django 2.0 on 2019-04-26 06:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('admission_sys', '0007_offered_programs'),
    ]

    operations = [
        migrations.CreateModel(
            name='Event',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=200)),
                ('description', models.TextField()),
                ('start_time', models.DateTimeField()),
                ('end_time', models.DateTimeField()),
            ],
        ),
    ]
