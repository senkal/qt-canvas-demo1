import QtQuick 2.0

Rectangle {
    id: container
    anchors.fill: app
    visible: false

    // todo decide what to do with this demo

    function goForIt(parent) {
        parent.x = (Math.floor(Math.random()*220));
        parent.y = (Math.floor(Math.random()*380));
        bounceAnimation.start();
    }

    Image {
        id: head;
        source: "../../assets/tux6.png";
        x: 0
        y: 0
        height: 80;
        width: 90;
        MouseArea {
            anchors.fill: parent
            onClicked: goForIt(parent);
        }
        Behavior on x {
            PropertyAnimation {
                target: head;
                properties: "x";
                duration: 1000;
            }
        }
        Behavior on y {
            PropertyAnimation {
                target: head;
                properties: "y";
                duration: 1000;
            }
        }

        transform: Scale {
            id: scaleTransform
            property real scale: 1
            xScale: scale
            yScale: scale
        }

        SequentialAnimation {
            id: bounceAnimation
            loops: 1
            PropertyAnimation {
                target: scaleTransform
                properties: "scale"
                from: 1.0
                to: 2.0
                duration: 500
            }
            PropertyAnimation {
                target: scaleTransform
                properties: "scale"
                from: 2.0
                to: 1.0
                duration: 500
            }
        }
    }
}
