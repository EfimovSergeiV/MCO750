import json
import psycopg2
from psycopg2.extras import RealDictCursor
from psycopg2 import Error


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

""" SQL запросы в БД """
list_requests = {
    "get_programm": "SELECT id, name, max_diameter, min_diameter  FROM programm_programmmodel",
}

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


def request(sql):
    """ Выполнение запроса в БД """
    try:
        connection = psycopg2.connect(
            user=default_db['USER'],
            password=default_db['PASSWORD'],
            database=default_db['NAME'],
            host="127.0.0.1",
            port="5432",
        )

        cursor = connection.cursor(cursor_factory=RealDictCursor)
        cursor.execute(sql)

        data = json.dumps(cursor.fetchall(), ensure_ascii=False)

        return json.loads(data)

    except (Exception, Error) as error:
        pass

    finally:
        if connection:
            cursor.close()
            connection.close()
            print("Соединение с PostgreSQL закрыто")


def welding_programm():
    """ Получение программ сварки из БД """

    response = request(list_requests['get_programm'])
    return response
