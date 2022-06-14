import sqlite3
from pathlib import Path
BASE_DIR = Path(__file__).resolve().parent.parent.parent


""" SQL запросы в БД """
list_requests = {
    "get_programm": "SELECT id, name, max_diameter, min_diameter FROM programm_programmmodel",

    "get_reflow": "SELECT * FROM programm_reflowparammodel WHERE programm_id = 1",
    "get_reflow_section": "SELECT * FROM programm_reflowsectionmodel WHERE reflow_id = 2",
}


def dict_factory(cursor, row):
    """ Преабразуем ответ курсора в словарь """
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d



def make_request_db(sql):
    """ Выполнение запроса в БД """

    try:
        sqlite_connection = sqlite3.connect(f'{ BASE_DIR }/db.sqlite3')
        sqlite_connection.row_factory = dict_factory

        cursor = sqlite_connection.cursor()

        cursor.execute(sql)
        data = cursor.fetchall()

        cursor.close()
        return data

    except sqlite3.Error as error:
        print("Ошибка при подключении к sqlite", error)
    finally:
        if (sqlite_connection):
            sqlite_connection.close()
            print("Соединение с SQLite закрыто")


def get_welding_programm():
    """ Получение программ сварки из БД """

    response = make_request_db(sql = "SELECT id, name, max_diameter, min_diameter FROM programm_programmmodel")
    print(f"REPSONSE: { response }")
    return response