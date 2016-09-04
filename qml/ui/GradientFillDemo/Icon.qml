import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: icon
    width: 100
    height: 100
    color: 'white'
    radius: 50
    rotation: 90
    gradient: Gradient {
        GradientStop { position: 0.0; color: "red" }
        GradientStop { position: 1.0; color: "black" }
    }

    readonly property int animationTime: 300

    Behavior on width {
        NumberAnimation { duration: icon.animationTime }
    }
    Behavior on height {
        NumberAnimation { duration: icon.animationTime }
    }
    Behavior on radius {
        NumberAnimation { duration: icon.animationTime }
    }

    MouseArea {
        anchors.fill: icon
        onClicked: {
            parent.width = container.height + 100
            parent.height = container.height + 100
            parent.radius = (container.height + 100)/2
        }
    }
}
