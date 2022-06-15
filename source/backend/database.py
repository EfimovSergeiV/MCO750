import json, psycopg2, sqlite3
from psycopg2.extras import RealDictCursor
from psycopg2 import Error
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent.parent


# """
# Tables: 

# [
#     ('django_migrations',), 
#     ('django_content_type',), 
#     ('auth_permission',), 
#     ('auth_group',), 
#     ('auth_group_permissions',), 
#     ('auth_user',), 
#     ('auth_user_groups',), 
#     ('auth_user_user_permissions',),
#     ('django_admin_log',), 
#     ('django_session',), 

#     ('programm_programmmodel',), 
#     ('programm_correctorparammodel',), 
#     ('programm_reflowparammodel',), 
#     ('programm_sedimentpressuresensormodel',), 
#     ('programm_primaryvoltagesensormodel',), 
#     ('programm_preheatingmodel',), 
#     ('programm_positionsensormodel',), 
#     ('programm_pkpressuremetersensormodel',), 
#     ('programm_otherparametersensormodel',), 
#     ('programm_oiltemperaturesensormodel',), 
#     ('programm_nkpressuremetersensormodel',), 
#     ('programm_hydraulicpressuresensormodel',), 
#     ('programm_currentsensormodel',), 
#     ('programm_burningmodel',), 
#     ('programm_clampmodel',), 
#     ('programm_reflowsectionmodel',), 
#     ('programm_correctorsectionmodel',)
# ]

# """

# """ SQL запросы в БД """
# list_requests = {
#     "get_programm": "SELECT id, name, max_diameter, min_diameter FROM programm_programmmodel",

#     "get_reflow": "SELECT * FROM programm_reflowparammodel WHERE programm_id = 1",
#     "get_reflow_section": "SELECT * FROM programm_reflowsectionmodel WHERE reflow_id = 2",
# }

DATABASE = {
    'psql': {
        # 'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'mco_db',
        'USER': 'mco_user',
        'PASSWORD': 'password',
        'HOST': 'localhost',
        'PORT': '',
    }
}



default_db = DATABASE['psql']


# def make_request_db(sql):
#     """ Выполнение запроса в БД """
#     try:
#         connection = psycopg2.connect(
#             user=default_db['USER'],
#             password=default_db['PASSWORD'],
#             database=default_db['NAME'],
#             host="127.0.0.1",
#             port="5432",
#         )

#         cursor = connection.cursor(cursor_factory=RealDictCursor)
#         cursor.execute(sql)

#         data = json.dumps(cursor.fetchall(), ensure_ascii=False)

#         return json.loads(data)

#     # except (Exception, Error) as error:
#     #     pass

#     finally:
#         if connection:
#             cursor.close()
#             connection.close()
#             print("Соединение с PostgreSQL закрыто")


# def get_welding_programm():
#     """ Получение программ сварки из БД """

#     response = make_request_db(list_requests['get_programm'])
#     return response


# def get_reflow(id):
#     """ Получение программы сварки из БД """

#     response = make_request_db(list_requests['get_reflow'])
#     return response



# def get_reflow_section(id):
#     """ Получение программы сварки из БД """

#     response = make_request_db(list_requests['get_reflow_section'])
#     return response


# # reflow = get_reflow(1)
# # sec = get_reflow_section(1)

# # print(f"{reflow}\n{sec}")


# import sqlite3
# from pathlib import Path
# import datetime


# BASE_DIR = Path(__file__).resolve().parent.parent.parent


# """ SQL запросы в БД """
# list_requests = {
#     "get_programm": "SELECT id, name, max_diameter, min_diameter FROM programm_programmmodel",
#     "create_programm": "INSERT INTO programm_programmmodel VALUES (?,?,?)", #, list_data # list_data = [name, max_diameter, min_diameter]
#     "update_programm": "UPDATE programm_programmmodel SET artist = 'John Doe' WHERE artist = 'Andy Hunter'",
#     "delete_programm": "DELETE FROM programm_programmmodel WHERE artist = 'John Doe'",

#     "get_reflow": "SELECT * FROM programm_reflowparammodel WHERE programm_id = 1",
#     "get_reflow_section": "SELECT * FROM programm_reflowsectionmodel WHERE reflow_id = 2",
    
#     "update": "",
#     "delete": "",
# }


# def dict_factory(cursor, row):
#     """ Преабразуем ответ курсора в словарь """
#     d = {}
#     for idx, col in enumerate(cursor.description):
#         d[col[0]] = row[idx]
#     return d



# def make_request_db(sql, list_data = None):
#     """ Выполнение запроса в БД """

#     try:
#         sqlite_connection = sqlite3.connect(f'{ BASE_DIR }/db.sqlite3')
#         sqlite_connection.row_factory = dict_factory

#         cursor = sqlite_connection.cursor()

#         cursor.execute(sql)
#         data = cursor.fetchall()

#         cursor.close()
#         return data

#     except sqlite3.Error as error:
#         print("Ошибка при подключении к sqlite", error)
#     finally:
#         if (sqlite_connection):
#             sqlite_connection.close()
#             print("Соединение с SQLite закрыто")


# def get_welding_programm():
#     """ Получение программ сварки из БД """
#     response = make_request_db(sql = "SELECT id, name, max_diameter, min_diameter FROM programm_programmmodel")
#     return response





# def create_programm(list_data):
#     """ Создание программы сварки в БД """
#     sqlite_connection = sqlite3.connect(f'{ BASE_DIR }/db.sqlite3')

#     cursor = sqlite_connection.cursor()
#     sql = "INSERT INTO programm_programmmodel VALUES (?,?,?,?,?,?,?)"

#     cursor.execute(sql, list_data)
#     sqlite_connection.commit()

#     cursor.close()


# dt_now = datetime.datetime.now()
# # create_programm(list_data = (9, 'Программа 9', 'Описание программы 9', dt_now, dt_now, 14, 12))


# def update_programm(list_data=None):
#     """ Обновление программы сварки в БД """
#     sqlite_connection = sqlite3.connect(f'{ BASE_DIR }/db.sqlite3')

#     cursor = sqlite_connection.cursor()
#     sql = "UPDATE programm_programmmodel SET name = 'Программа обновлена 3' WHERE id = 8"

#     cursor.execute(sql)
#     sqlite_connection.commit()

#     cursor.close()

# # update_programm()


# def remove_programm(id):
#     """ Удаление программы сварки из SQLite БД """

#     sqlite_connection = sqlite3.connect(f'{ BASE_DIR }/db.sqlite3')

#     cursor = sqlite_connection.cursor()
#     sql = f"DELETE FROM programm_programmmodel WHERE id = { id }"

#     cursor.execute(sql)
#     sqlite_connection.commit()
#     cursor.close()



#####################################################################################################################
#####################################################################################################################

selected_db = 'sqlite' # psql
# selected_db = 'psql' # sqlite


def dict_factory(cursor, row):
    """ Преабразуем ответ курсора в словарь """
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d


def get_db():
    """ Соединяемся с базой данных и возвращаем соединение  """

    if selected_db == 'sqlite':
        connection = sqlite3.connect(f'{ BASE_DIR }/db.sqlite3')

    elif selected_db == 'psql':
        connection = psycopg2.connect(
            user=default_db['USER'],
            password=default_db['PASSWORD'],
            database=default_db['NAME'],
            host="127.0.0.1",
            port="5432",
        )
        # cursor = connection.cursor(cursor_factory=RealDictCursor)

    else:
        print('Не выбрана база данных')
        raise Exception('Неизвестная база данных')

    return connection


def request_db(sql):
    """ Выполнение запроса в БД """
    conn = get_db()    

    # Работаем с SQLite
    if selected_db == 'sqlite':
        conn.row_factory = dict_factory
        cursor = conn.cursor()
        cursor.execute(sql)

        # Если нужно вернуть данные с запроса, обрабатываем и возвращаем)
        if sql.startswith('SELECT'):
            data = cursor.fetchall()
            return data

    # Работаем с PostgreSQL
    elif selected_db == 'psql':
        cursor = conn.cursor(cursor_factory=RealDictCursor)
        cursor.execute(sql)

        if sql.startswith('SELECT'):
            dump_data = json.dumps(cursor.fetchall(), ensure_ascii=False)
            return json.loads(dump_data)

    conn.commit()
    cursor.close()
    return "Запрос выполнен"


def remove_programm(id):
    """ Удаление программы сварки """

    sql = f"DELETE FROM programm_programmmodel WHERE id = { id }"
    request_db(sql)

    print(f"Программа { id } удалена")


def get_welding_programm():
    """ Получение всех программ сварки """
    
    sql = "SELECT id, name, max_diameter, min_diameter FROM programm_programmmodel"
    response = request_db(sql)

    return response
