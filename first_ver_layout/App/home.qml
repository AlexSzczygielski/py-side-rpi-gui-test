import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Imagine
import QtQuick.Window

ApplicationWindow {
    id: window
    width: 1280
    height: 720
    minimumWidth: 1180
    minimumHeight: 663
    visible: true
    title: "Yacht Computer GUI"

    //Colours
    readonly property color colorGlow: "#1d6d64"
    readonly property color colorWarning: "#d5232f"
    readonly property color colorMain: "#6affcd"
    readonly property color colorBright: "#ffffff"
    readonly property color colorLightGrey: "#888"
    readonly property color colorDarkGrey: "#333"

    //Font sizes
    readonly property int fontSizeExtraSmall: Qt.application.font.pixelSize * 0.8
    readonly property int fontSizeMedium: Qt.application.font.pixelSize * 1.5
    readonly property int fontSizeLarge: Qt.application.font.pixelSize * 2
    readonly property int fontSizeExtraLarge: Qt.application.font.pixelSize * 5

    Component.onCompleted: {
        x = Screen.width / 2 - width / 2
        y = Screen.height / 2 - height / 2
    }

    //Home Frame
    Frame {
        id: frame
        anchors.fill: parent
        anchors.margins: 10

        RowLayout {
            id: mainRowLayout
            anchors.fill: parent
            anchors.margins: 24
            spacing: 36
        }

        Container {
            id: leftTabBar

            currentIndex: 1

            Layout.fillWidth: false
            Layout.fillHeight: true

            ButtonGroup {
                    buttons: columnLayout.children
            }

            contentItem: ColumnLayout {
                    id: columnLayout
                    spacing: 3

                    Repeater {
                        model: leftTabBar.contentModel
                    }
                }

            
        }
    }    
}