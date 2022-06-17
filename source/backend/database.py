import json, psycopg2, sqlite3, datetime
from traceback import print_tb
from pprint import pprint
from psycopg2.extras import RealDictCursor
from psycopg2 import Error
from pathlib import Path
from random import randint

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
    """ Выполнение запроса(ов) в БД """

    if type(sql) == list:
        conn = get_db()
        
        # Настраиваем курсор в зависимости от выбраной БД
        if selected_db == 'sqlite':
            conn.row_factory = dict_factory
            cursor = conn.cursor()

        elif selected_db == 'psql':
            cursor = conn.cursor(cursor_factory=RealDictCursor)
            

        # Вставляем запросы
        for sql_request in sql:
            print(type(sql_request), sql_request)
            cursor.execute(sql_request)


            # Если нужно вернуть данные из запроса
            if sql_request.startswith('SELECT'):
                data = {}

                if selected_db == 'sqlite':
                    data = cursor.fetchall()
                    return data

                elif selected_db == 'psql':
                    dump_data = json.dumps(cursor.fetchall(), ensure_ascii=False)
                    return json.loads(dump_data)


        conn.commit()   # Комитим базу
        cursor.close()  # Закрываем соединение
        return "Запрос выполнен"


    else:
        print(sql)
        raise Exception("Give me list of sql requests")


    # # Работаем с SQLite
    # if selected_db == 'sqlite':
    #     conn.row_factory = dict_factory
    #     cursor = conn.cursor()

    #     # Что бы одним коммитом список запросов
    #     # ПОПРОБЫВАТЬ ПОДОБНОЕ С SELECT, ДЛЯ ПОЛУЧЕНИЯ ВСЕЙ ИНФОРМАЦИИ О ПРОГРАММЕ
    #     if type(sql) == list:
    #         for s in sql:
    #             cursor.execute(s)
    #     else:
    #         cursor.execute(sql)

    #         # Если нужно вернуть данные с запроса, обрабатываем и возвращаем)
    #         if sql.startswith('SELECT'):
    #             data = cursor.fetchall()
    #             return data

    # # Работаем с PostgreSQL
    # elif selected_db == 'psql':
    #     cursor = conn.cursor(cursor_factory=RealDictCursor)
    #     cursor.execute(sql)

    #     if sql.startswith('SELECT'):
    #         dump_data = json.dumps(cursor.fetchall(), ensure_ascii=False)
    #         return json.loads(dump_data)

    # conn.commit()
    # cursor.close()
    # return "Запрос выполнен"


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




dt_now = datetime.datetime.now()
diameter = randint(0, 50)

weldingProgrammData = {
    # programm_programmmodel
    "programm_programmmodel": {
        "name": f"Программа сварки { diameter }",
        "min_diameter": diameter,
        "max_diameter": diameter + 2,
        "description": f"Описание программы сварки { diameter }",
        "created_at": dt_now,
        "updated_at": dt_now,
    },
    # programm_preheatingmodel
    "programm_preheatingmodel": {
        "ph_0": randint(0, 50),
        "ph_1": randint(0, 50),
        "ph_2": randint(0, 50),
        "ph_3": randint(0, 50),
        "ph_4": randint(0, 50),
        "ph_5": randint(0, 50),
        "ph_6": randint(0, 50),
        "ph_7": randint(0, 50),
        "ph_8": randint(0, 50),
        "ph_9": randint(0, 50),
        "ph_10": randint(0, 50),
        "ph_11": randint(0, 50),
        "ph_12": randint(0, 50),
    },
    # programm_otherparametersensormodel
    "programm_otherparametersensormodel": {
        "oth_0": randint(0, 50),
        "oth_1": randint(0, 50),
        "oth_2": randint(0, 50),
        "oth_3": randint(0, 50),
        "oth_4": randint(0, 50),
        "oth_5": randint(0, 50),
        "oth_6": randint(0, 50),
        "oth_7": randint(0, 50),
        "oth_8": randint(0, 50),
        "oth_9": randint(0, 50),
        "oth_10": randint(0, 50),
        "oth_11": randint(0, 50),
        "oth_12": randint(0, 50),
        "oth_13": randint(0, 50),
        "oth_14": randint(0, 50),
        "oth_15": randint(0, 50),
        "oth_16": randint(0, 50),
        "oth_17": randint(0, 50),
    },
    # programm_primaryvoltagesensormodel
    "programm_primaryvoltagesensormodel": {
        "min_voltage": randint(0, 50),
        "max_voltage": randint(0, 50),
    },
    # programm_oiltemperaturesensormodel
    "programm_oiltemperaturesensormodel": {
        "min_value": randint(0, 50),
        "max_value": randint(0, 50),
    },
    # programm_hydraulicpressuresensormodel
    "programm_hydraulicpressuresensormodel": {
        "min_value": randint(0, 50),
        "max_value": randint(0, 50),
    },
    # programm_nkpressuremetersensormodel
    "programm_nkpressuremetersensormodel": {
        "min_value": randint(0, 50),
        "max_value": randint(0, 50),
    },
    # programm_pkpressuremetersensormodel
    "programm_pkpressuremetersensormodel": {
        "min_value": randint(0, 50),
        "max_value": randint(0, 50),
    },
    # programm_sedimentpressuresensormodel
    "programm_sedimentpressuresensormodel": {
        "min_value": randint(0, 50),
        "max_value": randint(0, 50),
    },
    # programm_primaryvoltagesensormodel
    "programm_primaryvoltagesensormodel": {
        "min_value": randint(0, 50),
        "max_value": randint(0, 50),
    },
    # programm_currentsensormodel
    "programm_currentsensormodel": {
        "min_value": randint(0, 50),
        "max_value": randint(0, 50),
    },
    # programm_positionsensormodel
    "programm_positionsensormodel": {
        "min_value": randint(0, 50),
        "max_value": randint(0, 50),
    },
    # programm_burningmodel
    "programm_burningmodel": {
        "b_0": randint(0, 50),
        "b_1": randint(0, 50),
        "b_2": randint(0, 50),
        "b_3": randint(0, 50),
        "b_4": randint(0, 50),
        "b_5": randint(0, 50),
        "b_6": randint(0, 50),
        "b_7": randint(0, 50),
    },
    # programm_clampmodel
    "programm_clampmodel": {
        "cl_0": randint(0, 50),
        "cl_1": randint(0, 50),
        "cl_2": randint(0, 50),
        "cl_3": randint(0, 50),
        "cl_4": randint(0, 50),
        "cl_5": randint(0, 50),
        "cl_6": randint(0, 50),
    },
    # programm_correctorparammodel
    "programm_correctorparammodel": {
        "id": 1,
        "programm_id": 1,
    },
    # programm_correctorsectionmodel
    "programm_correctorsectionmodel": [
        {
            "corrector": 1,
            "section": 0,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
        {
            "corrector": 1,
            "section": 1,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
                {
            "corrector": 1,
            "section": 2,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
        {
            "corrector": 1,
            "section": 3,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
                {
            "corrector": 1,
            "section": 4,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
        {
            "corrector": 1,
            "section": 5,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
                {
            "corrector": 1,
            "section": 6,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
        {
            "corrector": 1,
            "section": 7,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
                {
            "corrector": 1,
            "section": 8,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
        {
            "corrector": 1,
            "section": 9,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
    ],
    # programm_reflowparammodel
    "programm_reflowparammodel": {
        "id": 1,
        "programm_id": 1,
    },
    # programm_reflowsectionmodel
    "programm_reflowsectionmodel": [
        {
            "reflow": 1,
            "section": 0,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
        {
            "reflow": 1,
            "section": 1,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
        {
            "reflow": 1,
            "section": 2,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
        {
            "reflow": 1,
            "section": 3,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
                {
            "reflow": 1,
            "section": 4,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
        {
            "reflow": 1,
            "section": 5,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
        {
            "reflow": 1,
            "section": 6,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
        {
            "reflow": 1,
            "section": 7,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
        {
            "reflow": 1,
            "section": 8,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
        {
            "reflow": 1,
            "section": 9,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
    ]
}


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


def testing(list_requests):
    for sql_request in list_requests:
        print(sql_request)

def get_latest_id(model_name):
    """ Возвращаем последний id + 1 модели """

    sql = f"SELECT id FROM { model_name } ORDER BY id DESC LIMIT 1"
    latest_id = request_db([sql,])
    return latest_id[0]['id'] + 1


def create_programm(list_data=None):
    """ Создание программы сварки """
    list_requests = []
    fields = ()
    data = ()
    # Парсим параметры программы
    for model in weldingProgrammData.keys():
        print(model)
        for params in weldingProgrammData[model]:
            
            # Парсим вложенные параметры
            if type(params) == dict:
                for inserted_param in params.keys():
                    print(inserted_param)

        list_requests.append(f"""INSERT INTO {model}{fields} VALUES {data}""")

    testing(list_requests)


    # model = 'programm_programmmodel'
    # fields = ('id', 'name', 'min_diameter', 'max_diameter', 'description', 'created_at', 'updated_at')

    # data = (
    #     get_latest_id(model),
    #     weldingProgrammData['name'],
    #     weldingProgrammData['min_diameter'],
    #     weldingProgrammData['max_diameter'],
    #     weldingProgrammData['description'],
    #     str(weldingProgrammData['created_at']),
    #     str(weldingProgrammData['updated_at'])
    # )

    # programmodel = f"""INSERT INTO {model}{fields} VALUES {data}"""
        
    # request_db([
    #     programmodel,
    # ])

    # print(f"Программа создана")


def update_programm(list_data):
    """ Обновление программы сварки """

    sql = "UPDATE programm_programmmodel SET name = 'Программа обновлена 3' WHERE id = 8"
    request_db(sql)

    print(f"Программа обновлена")

create_programm()
# print(get_latest_id('programm_programmmodel'))