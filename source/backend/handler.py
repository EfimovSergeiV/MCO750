from cgi import test
from itertools import count
from PySide2.QtCore import QObject, Signal, Slot, QThread, QTimer

from PySide2.QtCore import *
from PySide2.QtWidgets import *
from PySide2.QtCharts import *
from PySide2.QtQml import *


from source.backend import db
import time
import random


class Handler(QObject):
    """ """

    list_programs = None
    new_program = None
    list_corrector_data = None
    list_reflow_data = None


    # Сигналы
    weldingProgramms = Signal(list)
    correctorData = Signal(list)
    reflowData = Signal(list)
    diametersData = Signal(list)

    chartData = Signal(list)



    def __init__(self):
        QObject.__init__(self)
        self.timer = QTimer()
        self.timer.timeout.connect(lambda: self.chart_worker_exx())
        self.timer.start(1000)



    count = 0
    def chart_worker_exx(self):
        """ Заполняет таблицу для примера """
        self.count += 1

        names = ['name1', 'name2', 'name3', 'name4', 'name5',]
        for name in names:
            data = [name, self.count, random.randint(50, 250)]

    
            self.chartData.emit(data)



    
    # Слоты
    @Slot()
    def get_welding_programm(self):
        """ Получение программ сварки """
        programm = db.get_welding_programm()
        self.list_programs = programm
        self.weldingProgramms.emit(programm)


    @Slot()
    def assembly_welding_programm(self):
        """ Подготовка новой программы сварки """
        print("Подготовка новой программы сварки")
        self.new_programm = {
            "name": f"Проограмма { len(self.list_programs) + 1 }",
            "description": "Нет описания",
            "min_diameter": 0,
            "max_diameter": 0,
        }


    @Slot()
    def create_welding_programm(self):
        """ Создание новой программы сварки """

        # Генерируем структуру для новой программы
        self.new_programm["min_diameter"] = self.list_reflow_data[0]['min_diameter']
        self.new_programm["max_diameter"] = self.list_reflow_data[0]['max_diameter']
        self.new_programm["reflow_data"] = self.list_reflow_data[0]

        print("НОВАЯ ПРОГРАММА:\n", self.new_programm)



    @Slot(list)
    def create_corrector_data(self, data):
        """ 
        Ввод данных программы сварки 
        [{'id': 2, 'programm_id': 1}]
        """
        self.list_corrector_data = data
        print(f"REFLOW DATA { data }")


    @Slot()
    def return_corrector_data(self):
        if self.list_corrector_data:
            print(f"RETURN CORRECTOR DATA { self.list_corrector_data }")
            self.correctorData.emit(self.list_corrector_data)


    @Slot(list)
    def create_reflow_data(self, data):
        """ 
        Ввод данных программы сварки 
        [{'id': 2, 'programm_id': 1}]
        """
        self.list_reflow_data = data
        print(f"REFLOW DATA { data }")


    @Slot()
    def return_reflow_data(self):
        """ 
        Возращает 40 значений в списке для перезаполнения ячеек 
        по ПОРЯДКУ СЕКЦИЙ
        """
        if self.list_reflow_data:
            list_data = []

            for dict_values in self.list_reflow_data[0]['sections']:

                list_data.append(dict_values['r_0'])
                list_data.append(dict_values['r_1'])
                list_data.append(dict_values['r_2'])
                list_data.append(dict_values['r_3'])

            self.reflowData.emit(list_data)
            self.diametersData.emit(
                [
                    { 
                        "min_diameter": self.list_reflow_data[0]['min_diameter'],
                        "max_diameter": self.list_reflow_data[0]['max_diameter'] 
                        },
                ]
            )


