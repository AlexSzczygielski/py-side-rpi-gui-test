#!/bin/bash
# setup-yacht-gui.sh
# Bash script to set up Python + PySide2 + QML environment for Raspberry Pi

set -e  # Exit immediately if a command fails

echo "Updating package lists..."
sudo apt update

echo "Installing build essentials and Python..."
sudo apt install -y build-essential python3 python3-pip python3-dev

echo "Installing Qt5 / PySide2 and QML modules..."
sudo apt install -y \
    qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools qtdeclarative5-dev \
    python3-pyside2.qtquick python3-pyside2.qtquickcontrols2 \
    python3-pyside2.qtcore python3-pyside2.qtgui \
    qml-module-qtquick-controls2 qml-module-qtquick-layouts qml-module-qtquick-window2

echo "Installing optional PyQt5 modules for fallback..."
sudo apt install -y \
    python3-pyqt5 python3-pyqt5.qtmultimedia python3-pyqt5.qtquick \
    python3-pyqt5.qtquickcontrols2

echo "Installing Qt Creator (optional, for development)"
sudo apt install -y qtcreator

echo "Verifying installations..."
python3 -c "import PySide2.QtQuick; import PySide2.QtQml; import PySide2.QtGui; print('PySide2 modules OK')"

echo "Setup complete! You can now run your Python QML app like this:"
echo "python3 main.py -platform eglfs"
