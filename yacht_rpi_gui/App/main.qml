import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

ApplicationWindow {
    visible: true
    width: 1280
    height: 720
    title: "Yacht System GUI"

    property int iconSize: 50
    property int currentPage: 0

    RowLayout {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 16

        //Left Panel
        RowLayout {
            Layout.fillHeight: true
            Layout.preferredWidth: 100
            spacing: 16

            ColumnLayout{
                //Left Icons Bar

                //Loading icons from IconButton.qml
                Loader{
                    id: loaderHome
                    source: "qrc:/components/IconButton.qml"
                    onLoaded: {
                        loaderHome.item.iconSource = "qrc:/assets/home.svg"
                    }
                }

                Loader{
                    id: loaderNavi
                    source: "qrc:/components/IconButton.qml"
                    onLoaded: {
                        loaderNavi.item.iconSource = "qrc:/assets/navi.svg"
                    }
                }

                Loader{
                    id: loaderSett
                    source: "qrc:/components/IconButton.qml"
                    onLoaded: {
                        loaderSett.item.iconSource = "qrc:/assets/settings.svg"
                    }
                }
            }

                //Left Data
                ColumnLayout{
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
            }
        

        // Divider
        Rectangle { color: "#00bfa5"; implicitWidth: 2; Layout.fillHeight: true }

        //Middle Section
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
        }

        //Divider
        Rectangle { color: "#00bfa5"; implicitWidth: 2; Layout.fillHeight: true }

        //Right Panel
        ColumnLayout{
            Layout.fillHeight: true
            Layout.preferredWidth: 100
            spacing: 16

            Button {
                Layout.preferredHeight: 80
                text: "Engine Stop"
                Layout.fillWidth: true
            }
            
        }
    }
}
