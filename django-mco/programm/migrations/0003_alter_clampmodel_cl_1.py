# Generated by Django 4.0.5 on 2022-06-02 11:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('programm', '0002_alter_clampmodel_cl_1'),
    ]

    operations = [
        migrations.AlterField(
            model_name='clampmodel',
            name='cl_1',
            field=models.IntegerField(default=0, verbose_name='Исходное'),
        ),
    ]
