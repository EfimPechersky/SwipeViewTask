import Felgo
import QtQuick
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2
App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    Window{
            width: 360
            height: 640
            visible: true
            title: qsTr("SwipeView_test")
            SwipeView {
            id: view
            currentIndex: 0
            anchors.fill: parent
            Item {
                id: redPage
                Rectangle{
                    anchors.fill:parent
                    color:"red"
                }
            }
            Item {
                id: yellowPage
                Rectangle{
                    anchors.fill:parent
                    color:"yellow"
                }
            }
            Item {
                id: greenPage
                Rectangle{
                    anchors.fill:parent
                    color:"green"
                }
                }
            }
            PageIndicator {
                id: indicator
                count: view.count
                currentIndex: view.currentIndex
                anchors.bottom: view.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
}
