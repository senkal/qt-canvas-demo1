import QtQuick 2.0
import QtGraphicalEffects 1.0
import '../ui/GradientFillDemo'

Item {
    id: container
    anchors.fill: app
    visible: false

    readonly property string assetsPath: '../../assets/GradientFillDemo/img/'

    function getImagePath(image) {
        return assetsPath + image;
    }

    Grid {
        columns: 2
        rows: 2
        anchors.fill: parent

    Icon {
        id: settings
    }
    }

}
