import QtQuick 2.7
import QtQuick.Window 2.2
import 'qml/ui'
import 'qml/configuration'
import 'qml/scene'

Window {
    id: window
    visible: true
    width: 320
    height: 480

    Item {
        id: app
        anchors.fill: parent

        WaterDemoScene {
            id: waterDemoScene
        }

        GradientFillDemoScene {
            id: gradientDemoScene
        }

        Item {
            id: menuScene
            visible: true
            anchors.centerIn: app

            Column {
                id: layout
                anchors.fill: menuScene

                MenuButton {
                    text: 'Water demo'
                    onClicked: app.state = AppState.waterDemo
                }
                MenuButton {
                    text: 'Gradient fill demo'
                    onClicked: app.state = AppState.gradientFillDemo
                }
            }
        }

        states: [
            State {
                name: AppState.menu
                PropertyChanges {target: menuScene; visible: true}
            },
            State {
                name: AppState.waterDemo
                PropertyChanges {target: menuScene; visible: false}
                PropertyChanges {target: waterDemoScene; visible: true}
            },
            State {
                name: AppState.gradientFillDemo
                PropertyChanges {target: menuScene; visible: false}
                PropertyChanges {target: gradientDemoScene; visible: true}
            }
        ]
    }

}
