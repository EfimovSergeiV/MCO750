# Generated by Django 4.0.5 on 2022-06-03 09:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('programm', '0005_remove_correctorsectionmodel_c_4_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='programmmodel',
            name='max_diameter',
            field=models.IntegerField(default=0, verbose_name='Максимальный диаметр, мм'),
        ),
        migrations.AddField(
            model_name='programmmodel',
            name='min_diameter',
            field=models.IntegerField(default=0, verbose_name='Минимальный диаметр, мм'),
        ),
    ]
