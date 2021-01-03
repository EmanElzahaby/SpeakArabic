import Felgo 3.0
import QtQuick 2.0
import QtMultimedia 5.12
GameWindow {
    id: gameWindow
    activeScene: scene
    screenWidth: 960
    screenHeight: 640

    Scene {
        id: scene
        Image {
            id:background2
            anchors.fill: parent
            source: "image/pngtree-children-s-day-outing-promotion-poster-image_227446.jpg"
        }




        Rectangle {
            id: rectangle
            anchors.fill: parent
            color: "grey"

            Text {
                id: textElement
                 font.pixelSize:30
                text: qsTr("ايام الاسبوع")
                color: "#ffffff"
                anchors.horizontalCenter:  parent.horizontalCenter
            }
            GameButton{
            anchors.verticalCenter: parent.verticalCenter
            text: "العوده للقائمه الرائسيه"
            onClicked: {
            var Component =Qt.createComponent("../level1.qml")
                var window =Component.createObject(gameWindow)
            level1.visible=false
            window.show

            }
            }
            Column{
            anchors.centerIn: parent
            spacing: 2

         GameButton{


         text:  "     اليوم الاول     "
          onClicked: {
          var Component =Qt.createComponent("Days/day1.qml")
              var window =Component.createObject(gameWindow)
          scene.visible=false
          window.show

          audio1.play()
          }


         }


         GameButton{


         text: "      اليوم الثاني   "
          onClicked: {

          var Component =Qt.createComponent("Days/day2.qml")
              var window =Component.createObject(gameWindow)
          scene.visible=false
          window.show
         audio2.play()

          }


         }
         GameButton{


         text: "     اليوم الثالث    "
          onClicked: {
          var Component =Qt.createComponent("Days/day3.qml")
              var window =Component.createObject(gameWindow)
          scene.visible=false
          window.show

          audio3.play()
          }


         }
         GameButton{


         text: "      اليوم الرابع    "
          onClicked: {
          var Component =Qt.createComponent("Days/day4.qml")
              var window =Component.createObject(gameWindow)
          scene.visible=false
          window.show
          audio4.play()

          }


         }
         GameButton{


         text: "    اليوم الخامس  "
          onClicked: {
          var Component =Qt.createComponent("Days/day5.qml")
              var window =Component.createObject(gameWindow)
          scene.visible=false
          window.show
          audio5.play()

          }


         }
         GameButton{


         text: "    اليوم السادس "
          onClicked: {
          var Component =Qt.createComponent("Days/day6.qml")
              var window =Component.createObject(gameWindow)
          scene.visible=false
          window.show
         audio6.play()

          }


         }
         GameButton{


         text: "    اليوم السابع    "
          onClicked: {
          var Component =Qt.createComponent("Days/day7.qml")
              var window =Component.createObject(gameWindow)
          scene.visible=false
          window.show

          audio7.play()
          }


         }

        }

    }

        Audio{
        id:audio1
        source:"sounds/222.mp3"

        }
        Audio{
        id:audio2
        source:"sounds/3333.mp3"

        }
        Audio{
        id:audio3
        source:"sounds/444.mp3"

        }
        Audio{
        id:audio4
        source:"sounds/555.mp3"

        }
        Audio{
        id:audio5
        source:"sounds/1.mp3"

        }
        Audio{
        id:audio6
        source:"sounds/777.mp3"

        }Audio{
            id:audio7
            source:"sounds/888.mp3"



            }
}
}
