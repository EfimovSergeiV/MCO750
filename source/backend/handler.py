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
        if self.list_reflow_data:
            print(f"RETURN REFLOW DATA { self.list_reflow_data }")
            self.reflowData.emit(self.list_reflow_data)