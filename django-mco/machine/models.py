from django.db import models


class MachineModel(models.Model):
    """ Подключение к машинам через PostgreSQL """

    machine = models.CharField(max_length=60, verbose_name='Название машины')
    name = models.CharField(max_length=60, verbose_name='Название БД')
    user = models.CharField(max_length=60, verbose_name='Пользователь')
    password = models.CharField(max_length=60, verbose_name='Пароль')
    host = models.CharField(max_length=60, verbose_name='Хост')
    port = models.CharField(max_length=60, verbose_name='Порт', default='5432')

    class Meta:
        verbose_name = 'Машина'
        verbose_name_plural = 'Машины'

    def __str__(self):
        return self.machine