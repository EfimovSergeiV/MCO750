# Generated by Django 4.0.5 on 2022-06-03 06:37

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='MachineModel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('machine', models.CharField(max_length=60, verbose_name='Название машины')),
                ('name', models.CharField(max_length=60, verbose_name='Название БД')),
                ('user', models.CharField(max_length=60, verbose_name='Пользователь')),
                ('password', models.CharField(max_length=60, verbose_name='Пароль')),
                ('host', models.CharField(max_length=60, verbose_name='Хост')),
                ('port', models.CharField(default='5432', max_length=60, verbose_name='Порт')),
            ],
            options={
                'verbose_name': 'Машина',
                'verbose_name_plural': 'Машины',
            },
        ),
    ]
