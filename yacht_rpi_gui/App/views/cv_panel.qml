import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
//Left Data
RowLayout{
    Layout.fillWidth: true
    Layout.fillHeight: true



    //Middle Section
    ColumnLayout{
        Layout.fillWidth: true
        Layout.fillHeight: true
        spacing: 20
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

        //Time and Date
        ColumnLayout {
            spacing: 2
            Layout.alignment: Qt.AlignHCenter

            Button {
                id: cv_roi
                text: "Create ROI"

                onClicked: {
                    backend.run_cv()
                }
            }

            Label {
                text: "15/07/1410"
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
    }

    Connections {
        target: backend
    }
}