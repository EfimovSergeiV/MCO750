from PySide2.QtCore import QObject, Signal, Slot, QThread
from source.backend import db


class Handler(QObject):
    """ Обработчик """


    # Сигналы
    weldingProgramms = Signal(list)

    
    # Слоты
    @Slot()
    def get_welding_programm(self):
        """ Получение программ сварки """

        programm = db.welding_programm()
        print(f"HANDLER { type(programm) }", programm)
        self.weldingProgramms.emit(programm)