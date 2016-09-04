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

        Item {
            id: menuScene
            visible: true
            anchors.centerIn: parent

            Column {
                id: layout
                anchors.fill: parent

                MenuButton {
                    text: 'Water demo'
                    onClicked: app.state = AppState.waterDemo
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
            }
        ]
    }

}
