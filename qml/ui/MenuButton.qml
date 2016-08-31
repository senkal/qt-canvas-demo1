import VPlay 2.0
import QtQuick 2.0

Rectangle {
    id: button
    anchors.horizontalCenter: parent.horizontalCenter
    radius: 12
    color: 'green'
    border.color: 'black'
    width: buttonText.width + padding
    height: buttonText.height + padding

    readonly property int padding: 10
    property alias text: buttonText.text
    signal clicked()

    Text {
        id: buttonText
        font.pixelSize: 16
        anchors.centerIn: parent
        color: 'white'
    }

    MouseArea {
        anchors.fill: buttonText
        onClicked: button.clicked()
    }
}
