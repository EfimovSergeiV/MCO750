# This Python file uses the following encoding: utf-8
import os, sys
from pathlib import Path
from source.backend.handler import Handler

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    handler = Handler()
    engine.rootContext().setContextProperty("handler", handler)

    engine.load(os.fspath(Path(__file__).resolve().parent / "source/main.qml"))
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
