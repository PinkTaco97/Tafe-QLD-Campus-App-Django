# Generated by Django 4.0.4 on 2022-06-10 02:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tafe', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='notification',
            name='sent',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='notification',
            name='type',
            field=models.CharField(choices=[('A', 'All'), ('I', 'Industry'), ('R', 'Region'), ('C', 'Campus')], default='C', max_length=1),
        ),
    ]
