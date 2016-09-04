import QtQuick 2.0
import QtQuick.Particles 2.0

Item {
    id: container
    anchors.fill: app
    visible: false

    readonly property string assetsPath: '../../assets/WaterDemo/img/'

    function getImagePath(image) {
        return assetsPath + image;
    }

    Image {
        width: container.width
        height: 1440
        y: -(480 * 2)
        source: getImagePath('background.png')
    }

    Image {
        source: getImagePath('sunlight.png')
        opacity: 0.02
        y: -35
        anchors.horizontalCenter: container.horizontalCenter
        transformOrigin: Item.Top
        SequentialAnimation on rotation {
            loops: Animation.Infinite
            NumberAnimation { from: -10; to: 10; duration: 8000; easing.type: Easing.InOutSine }
            NumberAnimation { from: 10; to: -10; duration: 8000; easing.type: Easing.InOutSine }
        }
    }

    Image {
        source: getImagePath('/sunlight.png')
        opacity: 0.04
        y: -15
        anchors.horizontalCenter: container.horizontalCenter
        transformOrigin: Item.Top
        SequentialAnimation on rotation {
            loops: Animation.Infinite
            NumberAnimation { from: 10; to: -10; duration: 8000; easing.type: Easing.InOutSine }
            NumberAnimation { from: -10; to: 10; duration: 8000; easing.type: Easing.InOutSine }
        }
    }

    ParticleSystem {
        id: particles
        anchors.fill: container

        ImageParticle {
            id: bubble
            anchors.fill: particles
            source: getImagePath('catch.png')
            opacity: 0.25
        }

        Wander {
            xVariance: 25;
            pace: 25;
        }

        Emitter {
            width: particles.width
            height: 175
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 3
            startTime: 15000

            emitRate: 2
            lifeSpan: 15000

            acceleration: PointDirection{y: -6; xVariation: 2; yVariation: 2 }

            size: 24
            sizeVariation: 16
        }
    }

    Image {
        source: getImagePath('logo-fish.png')
        anchors.top: container.top

        SequentialAnimation on x {
            loops: Animation.Infinite
            NumberAnimation { from: x + 148; to: x + 25; duration: 2000; easing.type: Easing.InOutQuad }
            NumberAnimation { from: x + 25; to: x + 148; duration: 1600; easing.type: Easing.InOutQuad }
        }
        SequentialAnimation on anchors.topMargin {
            loops: Animation.Infinite
            NumberAnimation { from: 100; to: 60; duration: 1600; easing.type: Easing.InOutQuad }
            NumberAnimation { from: 60; to: 100; duration: 2000; easing.type: Easing.InOutQuad }
        }
    }

    Image {
        source: getImagePath('logo-bubble.png')
        anchors.top: container.top

        SequentialAnimation on x {
            loops: Animation.Infinite
            NumberAnimation { from: x + 140; to: x + 40; duration: 2000; easing.type: Easing.InOutQuad }
            NumberAnimation { from: x + 40; to: x + 140; duration: 1600; easing.type: Easing.InOutQuad }
        }
        SequentialAnimation on anchors.topMargin {
            loops: Animation.Infinite
            NumberAnimation { from: 100; to: 60; duration: 1600; easing.type: Easing.InOutQuad }
            NumberAnimation { from: 60; to: 100; duration: 2000; easing.type: Easing.InOutQuad }
        }
        SequentialAnimation on width {
            loops: Animation.Infinite
            NumberAnimation { from: 140; to: 160; duration: 1000; easing.type: Easing.InOutQuad }
            NumberAnimation { from: 160; to: 140; duration: 800; easing.type: Easing.InOutQuad }
        }
        SequentialAnimation on height {
            loops: Animation.Infinite
            NumberAnimation { from: 160; to: 140; duration: 800; easing.type: Easing.InOutQuad }
            NumberAnimation { from: 140; to: 160; duration: 1000; easing.type: Easing.InOutQuad }
        }
    }
}
