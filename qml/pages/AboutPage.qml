import QtQuick 2.6
import Sailfish.Silica 1.0

Page {
    objectName: "aboutPage"

    SilicaFlickable {
        objectName: "flickable"
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column

            objectName: "column"
            anchors {
                left: parent.left
                right: parent.right
            }
            bottomPadding: Theme.horizontalPageMargin

            PageHeader {
                objectName: "pageHeader"
                title: qsTr("About Application")
            }

            Label {
                objectName: "readmeLabel"
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Theme.horizontalPageMargin
                }
                color: palette.highlightColor
                font.pixelSize: Theme.fontSizeSmall
                textFormat: Text.RichText
                wrapMode: Text.WordWrap
                text: qsTr("<p>Welcome to Marina.Moda where we share information related to Music, Streaming, Blockchain, WEB3. We're dedicated to providing you the very best information and knowledge of the above mentioned topics! We hope you found all of the information on Marina.Moda helpful, as we love to share them with you. If you require any more information or have any questions about our site, please feel free to contact us by email at support@rechain.network.</p>")
            }

            SectionHeader {
                objectName: "licenseHeader"
                text: qsTr("The 3-Clause BSD License")
            }

            Label {
                objectName: "licenseLabel"
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Theme.horizontalPageMargin
                }
                color: palette.highlightColor
                font.pixelSize: Theme.fontSizeSmall
                textFormat: Text.RichText
                wrapMode: Text.WordWrap
                text: qsTr("<p><em>Copyright (c) © Join the Domestic Marina! Marina.Moda ® ♥️ Music Prod. : Discover Top Podcasts & Music | Your Ultimate Audio Hub For Your Pods!!</em></p>")
            }
        }
    }
}
