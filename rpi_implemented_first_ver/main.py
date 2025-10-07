import sys
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine 
from PyQt5.QtCore import QUrl

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    view = QQmlApplicationEngine()
    view.addImportPath(sys.path[0])
    view.load("App/home.qml")
    ex = app.exec()

    del view
    sys.exit(ex)