from cgi import test
from PySide2.QtCore import QObject, Signal, Slot, QThread
from source.backend import db


class Handler(QObject):
    """ Обработчик """
    list_programs = None
    list_corrector_data = None
    list_reflow_data = None


    # Сигналы
    weldingProgramms = Signal(list)
    correctorData = Signal(list)
    reflowData = Signal(list)

    
    # Слоты
    @Slot()
    def get_welding_programm(self):
        """ Получение программ сварки """
        programm = db.get_welding_programm()
        self.list_programs = programm
        self.weldingProgramms.emit(programm)


    @Slot()
    def create_welding_programm(self):
        """ Создание программы сварки """

        print(f"Создание программы сварки { len(self.list_programs) }")


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
            print(f"RETURN REFLOW DATA { self.list_reflow_data }")
            for dict_values in self.list_reflow_data[0]['sections']:

                r_0 = dict_values['r_0'] if 'r_0' in dict_values else ''
                r_1 = dict_values['r_1'] if 'r_1' in dict_values else ''
                r_2 = dict_values['r_2'] if 'r_2' in dict_values else ''
                r_3 = dict_values['r_3'] if 'r_3' in dict_values else ''
                list_data.append(r_0)
                list_data.append(r_1)
                list_data.append(r_2)
                list_data.append(r_3)

                print(f"СЛОВАРЬ: { dict_values }")
            

            self.reflowData.emit(list_data)