import sqlite3
from pathlib import Path
import datetime


BASE_DIR = Path(__file__).resolve().parent.parent.parent


""" SQL запросы в БД """
list_requests = {
    "get_programm": "SELECT id, name, max_diameter, min_diameter FROM programm_programmmodel",
    "create_programm": "INSERT INTO programm_programmmodel VALUES (?,?,?)", #, list_data # list_data = [name, max_diameter, min_diameter]
    "update_programm": "UPDATE programm_programmmodel SET artist = 'John Doe' WHERE artist = 'Andy Hunter'",
    "delete_programm": "DELETE FROM programm_programmmodel WHERE artist = 'John Doe'",

    "get_reflow": "SELECT * FROM programm_reflowparammodel WHERE programm_id = 1",
    "get_reflow_section": "SELECT * FROM programm_reflowsectionmodel WHERE reflow_id = 2",
    
    "update": "",
    "delete": "",
}


def dict_factory(cursor, row):
    """ Преабразуем ответ курсора в словарь """
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d



def make_request_db(sql, list_data = None):
    """ Выполнение запроса в БД """

    try:
        sqlite_connection = sqlite3.connect(f'{ BASE_DIR }/db.sqlite3')
        sqlite_connection.row_factory = dict_factory

        cursor = sqlite_connection.cursor()

        cursor.execute(sql, list_data)
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
    return response





def create_programm(list_data):
    """ Создание программы сварки в БД """
    sqlite_connection = sqlite3.connect(f'{ BASE_DIR }/db.sqlite3')

    cursor = sqlite_connection.cursor()
    sql = "INSERT INTO programm_programmmodel VALUES (?,?,?,?,?,?,?)"

    cursor.execute(sql, list_data)
    sqlite_connection.commit()

    cursor.close()


dt_now = datetime.datetime.now()
# create_programm(list_data = (9, 'Программа 9', 'Описание программы 9', dt_now, dt_now, 14, 12))


def update_programm(list_data=None):
    """ Обновление программы сварки в БД """
    sqlite_connection = sqlite3.connect(f'{ BASE_DIR }/db.sqlite3')

    cursor = sqlite_connection.cursor()
    sql = "UPDATE programm_programmmodel SET name = 'Программа обновлена 3' WHERE id = 8"

    cursor.execute(sql)
    sqlite_connection.commit()

    cursor.close()

# update_programm()

def delete_programm():
    """ Удаление программы """
    sqlite_connection = sqlite3.connect(f'{ BASE_DIR }/db.sqlite3')

    cursor = sqlite_connection.cursor()
    sql = "DELETE FROM programm_programmmodel WHERE id = 8"

    cursor.execute(sql)
    sqlite_connection.commit()

    cursor.close()

delete_programm()