import sys
from PySide6.QtWidgets import QApplication, QMainWindow
from simple_ui import Ui_MainWindow #Importing the generated UI file

class MainWindow(QMainWindow):
    def __init__(self):
        super(MainWindow,self).__init__()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)

        #connect quit button
        self.ui.pushButton.clicked.connect(self.close)

if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    sys.exit(app.exec())

