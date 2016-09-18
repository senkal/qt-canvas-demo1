import QtQuick 2.7
import QtQuick.Particles 2.0

Rectangle {
    id: container
    anchors.fill: app
    visible: false
    color: '#000'

    readonly property string assetsPath: '../../assets/RainDemo/img/'

    function getImagePath(image) {
        return assetsPath + image;
    }

    ParticleSystem {
        id: particles
        anchors.fill: container

        ImageParticle {
            id: drop
            anchors.fill: particles
            source: getImagePath('rain.png')
            entryEffect: ImageParticle.Fade
            rotation: -45
            rotationVariation: 2
            opacity: 0.5
            color: '#fff'
            colorVariation: 0.3
            rotationVelocity: 15
        }

        Emitter {
            width: particles.width + 150
            height: 290
            x: -150
            y: -30
            anchors.top: parent.top
            startTime: 2000

            emitRate: 815
            lifeSpan: 2000
            lifeSpanVariation: 1000

            acceleration: AngleDirection{
                angle: 60
                angleVariation: 5
                magnitude: 2950
                magnitudeVariation: 50
            }

            size: 5
            sizeVariation: 3
        }
    }
}
