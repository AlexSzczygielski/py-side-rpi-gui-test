import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

ApplicationWindow {
    visible: true
    width: 1024
    height: 600
    title: "Yacht System GUI"

    property int iconSize: 50
    property int currentPage: 0

    RowLayout {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 16

        //Left Panel
        ColumnLayout{
            Layout.fillHeight: true
            Layout.preferredWidth: 100
            spacing: 16
            //Left Icons Bar

            //Loading icons from IconButton.qml
            Loader{
                id: loaderHome
                source: "qrc:/components/IconButton.qml"
                onLoaded: {
                    loaderHome.item.iconSource = "qrc:/assets/home.svg"
                    loaderHome.item.clicked.connect(() => {
                        loaderHome.item.selected = true
                        mainLoader.source = "qrc:/views/home.qml"
                    } )
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
        

        //Center Content
        Loader{
            id: mainLoader
            source: "qrc:/views/home.qml"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }


        //Right Panel
        ColumnLayout{
            Layout.fillHeight: true
            Layout.preferredWidth: 100
            spacing: 16
            //Left Icons Bar

            //Loading icons from IconButton.qml
            Loader{
                id: loaderCV
                source: "qrc:/components/IconButton.qml"
                onLoaded: {
                    loaderCV.item.iconSource = "qrc:/assets/camera100.svg"
                    loaderCV.item.clicked.connect(() => {
                        loaderCV.item.selected = true
                        mainLoader.source = "qrc:/views/cv_panel.qml"
                    } )
                }
            }

            Loader{
                id: loaderNavi2
                source: "qrc:/components/IconButton.qml"
                onLoaded: {
                    loaderNavi2.item.iconSource = "qrc:/assets/navi.svg"
                }
            }

            Loader{
                id: loaderSett2
                source: "qrc:/components/IconButton.qml"
                onLoaded: {
                    loaderSett2.item.iconSource = "qrc:/assets/settings.svg"
                }
            }
        }        
    }
}
