import QtQuick 2.0
import Felgo 3.0

// EMPTY SCENE

Scene {
id:s2
Image {
    id:background
    anchors.fill: parent
    source: "../image/pngtree-new-force-week-purple-gradient-geometric-new-in-autumn-image_14189.jpg"
}
    Text {
        font.pixelSize: 80
        text: "الاحد"
        color: "black"

        anchors.centerIn: parent
    }

    Rectangle{
    anchors.verticalCenter: parent.verticalCenter
        GameButton{


        text: "  عودة  "

        onClicked: {
        var Component =Qt.createComponent("../DayBase.qml")
            var window =Component.createObject(s2)
        scene.visible=false
        window.show




        }

       }



    }
}
