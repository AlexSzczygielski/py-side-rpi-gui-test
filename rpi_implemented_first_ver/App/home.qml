import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

ApplicationWindow {
    visible: true
    width: 1280
    height: 720
    title: "Yacht System GUI"

    // Quick prototype UI
    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 16

        Label {
            text: "Yacht Dashboard"
            font.pixelSize: 28
            font.bold: true
            Layout.alignment: Qt.AlignHCenter
        }

        Button {
            text: "Engine Start"
            Layout.fillWidth: true
        }

        Slider {
            from: 0; to: 100
            value: 50
            Layout.fillWidth: true
        }

        Switch {
            text: "Navigation Lights"
        }
    }
}
