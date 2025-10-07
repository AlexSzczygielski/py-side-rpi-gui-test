import QtQuick 2.15
import QtQuick.Controls 2.15

ToolButton {
    //properties
    property string iconSource: ""
    property int iconSize: 50

    icon.source: iconSource
    icon.width: iconSize
    icon.height: iconSize
}