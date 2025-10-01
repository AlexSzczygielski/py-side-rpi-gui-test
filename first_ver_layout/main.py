import sys
from PySide6.QtGui import QGuiApplication
from PySide6.QtQuick import QQuickView
from PySide6.QtQml import QQmlApplicationEngine 

if __name__ == "__main__":
    app = QGuiApplication()
    view = QQmlApplicationEngine()
    view.addImportPath(sys.path[0])
    view.loadFromModule("App","Home")
    ex = app.exec()

    del view
    sys.exit(ex)