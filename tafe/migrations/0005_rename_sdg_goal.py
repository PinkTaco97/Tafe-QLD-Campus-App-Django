# Generated by Django 4.0.4 on 2022-06-10 16:05

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tafe', '0004_point_sdg'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='SDG',
            new_name='Goal',
        ),
    ]
