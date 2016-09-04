import QtQuick 2.0

Item {
    id: container
    anchors.fill: app
    visible: false

    readonly property string assetsPath: '../../assets/WaterDemo/img/'

    function getImagePath(image) {
        return assetsPath + image;
    }

    Image {
        width: parent.width
        height: 1440
        y: -(480 * 2)
        source: getImagePath('background.png')
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
        anchors.top: parent.top

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
