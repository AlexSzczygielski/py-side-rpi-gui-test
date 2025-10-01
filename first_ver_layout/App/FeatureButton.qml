// FeatureButton.qml
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls.Imagine 1.0  // optional: helps when Imagine style is available

Control {
    id: root
    property alias text: label.text
    property alias icon: iconItem.source
    implicitWidth: 220
    implicitHeight: 72

    background: Rectangle {
        anchors.fill: parent
        radius: 10
        color: control.pressed ? Qt.darker(palette.button, 1.05) : palette.button
        border.color: palette.mid
        border.width: 1
        // subtle glow with drop shadow could be added if desired
    }

    contentItem: RowLayout {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 12
        Image {
            id: iconItem
            source: ""       // set from usage: icon: "qrc:/icons/navigation.svg" or icon.name mapping
            width: 36
            height: 36
            fillMode: Image.PreserveAspectFit
            visible: source !== ""
        }
        Text {
            id: label
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: Qt.application.font.pixelSize * 1.25
            color: palette.text
            elide: Text.ElideRight
        }
    }

    // mouse handling
    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
        onPressed: root.pressed = true
        onReleased: root.pressed = false
    }

    signal clicked()
    property bool pressed: false
}
