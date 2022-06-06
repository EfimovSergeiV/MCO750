from PySide2.QtCore import QObject, Signal, Slot, QThread
from source.backend import db


class Handler(QObject):
    """ Обработчик """
    list_programs = []


    # Сигналы
    weldingProgramms = Signal(list)

    
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
    def input_reflow_data(self, data):
        """ 
        Ввод данных программы сварки 
        [{'id': 2, 'programm_id': 1}]
        """
        
        print(f"REFLOW DATA { data }")