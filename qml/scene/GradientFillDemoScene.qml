import QtQuick 2.0
import QtGraphicalEffects 1.0
import '../ui/GradientFillDemo'

Rectangle {
    id: container
    anchors.fill: app
    visible: false

    readonly property string assetsPath: '../../assets/GradientFillDemo/img/'

    property int stacked: 1

    function getImagePath(image) {
        return assetsPath + image;
    }

    Grid {
        columns: 2
        rows: 2
        anchors.centerIn: parent

        Icon {
            onStarted: {
                z=++stacked
            }
        }
        Icon {
            fromColor: 'yellow'
            toColor: 'brown'
            onStarted: {
                z=++stacked
            }
        }
        Icon {
            fromColor: 'orange'
            toColor: 'black'
            onStarted: {
                z=++stacked
            }
        }
        Icon {
            fromColor: 'green'
            toColor: 'red'
            onStarted: {
                z=++stacked
            }
        }
    }

}
