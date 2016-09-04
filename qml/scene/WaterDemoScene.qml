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

        ParticleSystem {
            id: particles
            anchors.fill: parent

            ImageParticle {
                id: bubble
                anchors.fill: parent
                source: getImagePath('catch.png')
                opacity: 0.25
            }

            Wander {
                xVariance: 25;
                pace: 25;
            }

            Emitter {
                width: parent.width
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
