import QtQuick 2.0
import Felgo 3.0

// EMPTY SCENE

Scene {
id:s6
Image {
    id:background
    anchors.fill: parent
    source: "../image/pngtree-new-force-week-purple-gradient-geometric-new-in-autumn-image_14189.jpg"
}
    Text {
font.pixelSize: 50
        text: "الخميس"
        color: "black"

        anchors.centerIn: parent
    }
    Rectangle{
    anchors.verticalCenter: parent.verticalCenter
        GameButton{



        text: "  عودة  "

        onClicked: {
        var Component =Qt.createComponent("../DayBase.qml")
            var window =Component.createObject(s6)
        scene.visible=false
        window.show




        }

       }



    }
}
