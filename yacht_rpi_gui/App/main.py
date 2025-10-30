import sys
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine 
from PyQt5.QtCore import QObject, pyqtSignal, pyqtSlot, QProcess, QUrl

import qml_rc


class Backend(QObject):
    img_ready = pyqtSignal(str)

    @pyqtSlot()
    def run_cv(self):
        self.process = QProcess(self)
        self.process.finished.connect(self.on_process_finished)
        #self.process.setProcessChannelMode(QProcess.ForwardedChannels)
        self.process.start("python3", ["cv_test.py"])
    
    def on_process_finished(self):
        print("finished")


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    view = QQmlApplicationEngine()
    view.addImportPath(sys.path[0])

    backend = Backend()
    view.rootContext().setContextProperty("backend",backend)

    #view.load("App/views/home.qml")
    view.load(QUrl("qrc:main.qml"))
    ex = app.exec()

    del view
    sys.exit(ex)