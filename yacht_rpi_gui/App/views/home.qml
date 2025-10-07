import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
//Left Data
RowLayout{
    Layout.fillWidth: true
    Layout.fillHeight: true

    // Left spacer
    Item { Layout.fillWidth: true }
ColumnLayout{
    Layout.fillWidth: true
    Layout.fillHeight: true
    spacing: 20

    Dial {
        id: volumeDial
        from: 0
        value: 42
        to: 100
        stepSize: 1

        Layout.alignment: Qt.AlignHCenter
        Layout.preferredWidth: 128
        Layout.preferredHeight: 128
    }
}

// Divider
Rectangle { color: "#00bfa5"; implicitWidth: 2; Layout.fillHeight: true }

//Middle Section
Item { Layout.fillWidth: true } // left spacer
ColumnLayout{
    Layout.fillWidth: true
    Layout.fillHeight: true
    spacing: 20

    //Time and Date
    ColumnLayout {
        spacing: 2
        Layout.alignment: Qt.AlignHCenter

        Label {
            text: "12:00"
            font.pixelSize: 78
            font.bold: true
            Layout.alignment: Qt.AlignHCenter
        }

        Label {
            text: "15/10/1410"
            font.pixelSize: 18
            font.bold: true
            Layout.alignment: Qt.AlignHCenter
        }
    }

    Image {
        Layout.topMargin: 40
        source: "qrc:/assets/model.png"
        fillMode: Image.PreserveAspectFit
        Layout.alignment: Qt.AlignHCenter
        Layout.preferredWidth: 300
        Layout.preferredHeight: 300
    }

    // Optional spacer to push content up
    Item { Layout.fillHeight: true }

    Item { Layout.fillWidth: true } // right spacer
}

//Divider
Rectangle { color: "#00bfa5"; implicitWidth: 2; Layout.fillHeight: true }
// Left spacer
    Item { Layout.fillWidth: true }
}