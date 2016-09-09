import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: icon
    width: 100
    height: 100
    color: 'white'
    radius: 50
    rotation: 90
    z: 100
    gradient: Gradient {
        GradientStop {
            id: fromColor
            position: 0.0;
            color: "red"
        }
        GradientStop {
            id: toColor
            position: 1.0;
            color: "black"
        }
    }

    signal finished
    signal started

    readonly property int animationTime: 300
    readonly property int maxLength: container.height + container.width

    property alias fromColor: fromColor.color
    property alias toColor: toColor.color

    ParallelAnimation {
        id: expandAnimation
        running: false
        loops: 1

        NumberAnimation {
            target: icon
            properties: "scale"
            duration: animationTime
            to: 12
        }
        NumberAnimation {
            target: icon
            property: 'radius'
            duration: animationTime
            to: maxLength/2
        }
        onStopped: {
            icon.finished()
        }
        onStarted: {
            icon.started()
        }
    }

    transformOrigin: Item.Center

    MouseArea {
        anchors.fill: icon
        onClicked: {
            expandAnimation.start()
        }
    }
}
