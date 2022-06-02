"""
Tables: 

[
    ('django_migrations',), 
    ('django_content_type',), 
    ('auth_permission',), 
    ('auth_group',), 
    ('auth_group_permissions',), 
    ('auth_user',), 
    ('auth_user_groups',), 
    ('auth_user_user_permissions',),
    ('django_admin_log',), 
    ('django_session',), 

    ('programm_programmmodel',), 
    ('programm_correctorparammodel',), 
    ('programm_reflowparammodel',), 
    ('programm_sedimentpressuresensormodel',), 
    ('programm_primaryvoltagesensormodel',), 
    ('programm_preheatingmodel',), 
    ('programm_positionsensormodel',), 
    ('programm_pkpressuremetersensormodel',), 
    ('programm_otherparametersensormodel',), 
    ('programm_oiltemperaturesensormodel',), 
    ('programm_nkpressuremetersensormodel',), 
    ('programm_hydraulicpressuresensormodel',), 
    ('programm_currentsensormodel',), 
    ('programm_burningmodel',), 
    ('programm_clampmodel',), 
    ('programm_reflowsectionmodel',), 
    ('programm_correctorsectionmodel',)
]

"""



DATABASE = {
    'default': {
        # 'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'mco_db',
        'USER': 'mco_user',
        'PASSWORD': 'password',
        'HOST': 'localhost',
        'PORT': '',
    }
}

default_db = DATABASE['default']

sql = "SELECT table_name FROM information_schema.tables WHERE table_schema='public'"

from email.policy import default
import psycopg2
from psycopg2 import Error

try:
    # Подключение к существующей базе данных
    connection = psycopg2.connect(user=default_db['USER'],
                                  # пароль, который указали при установке PostgreSQL
                                  password=default_db['PASSWORD'],
                                  host="127.0.0.1",
                                  port="5432",
                                  database=default_db['NAME'])

    # Курсор для выполнения операций с базой данных
    cursor = connection.cursor()
    cursor.execute(sql)
    tables = cursor.fetchall()
    print(tables)


except (Exception, Error) as error:
    pass
#     print("Ошибка при работе с PostgreSQL", error)
# finally:
#     if connection:
#         c.close()
#         connection.close()
#         print("Соединение с PostgreSQL закрыто")