import json, psycopg2, sqlite3, datetime
from random import randint
from pathlib import Path
from random import randint

BASE_DIR = Path(__file__).resolve().parent.parent.parent

def dict_factory(cursor, row):
    """ Преабразуем ответ курсора в словарь """
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d

dt_now = datetime.datetime.now()
diameter = randint(0, 50)
selected_db = 'sqlite' # psql

weldingProgrammData = {
    # programm_programmmodel
    "programm_programmmodel": {
        "name": f"Программа сварки { diameter } - { diameter + 2 }",
        "min_diameter": diameter,
        "max_diameter": diameter + 2,
        "description": f"Описание программы сварки { diameter }",
        "created_at": str(dt_now),
        "updated_at": str(dt_now),
    },
    # programm_preheatingmodel
    "programm_preheatingmodel": {
        "programm_id": None,
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
}


def get_db():
    """ Соединяемся с базой данных и возвращаем соединение  """

    if selected_db == 'sqlite':
        connection = sqlite3.connect(f'{ BASE_DIR }/db.sqlite3')

    # elif selected_db == 'psql':
    #     connection = psycopg2.connect(
    #         user=default_db['USER'],
    #         password=default_db['PASSWORD'],
    #         database=default_db['NAME'],
    #         host="127.0.0.1",
    #         port="5432",
    #     )
        # cursor = connection.cursor(cursor_factory=RealDictCursor)

    else:
        print('Не выбрана база данных')
        raise Exception('Неизвестная база данных')

    return connection


def request_db(sql):
    """ Выполнение списка запросов в БД """

    if type(sql) == list:
        conn = get_db()
        
        # Настраиваем курсор в зависимости от выбраной БД
        if selected_db == 'sqlite':
            conn.row_factory = dict_factory
            cursor = conn.cursor()

        # elif selected_db == 'psql':
        #     cursor = conn.cursor(cursor_factory=RealDictCursor)
            

        # Вставляем запросы
        for sql_request in sql:
            cursor.execute(sql_request)
            cursor.lastrowid


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