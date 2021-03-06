import QtQuick 2.0
import QtQuick.Controls 2.0

Item{
    id: r
    width: parent.width
    height: app.fs*2
    property int fontSize: app&&app.fs?app.fs:14
    property string fontColor: app.c2?app.c2:'black'
    property int dropHeight: app.fs*2
    property int contentHeight: app&&app.fs?app.fs*10:300
    property alias model: lvItems.model
    property int currentIndex: 0
    property string currentText: model.length>0?model[currentIndex]:'Empty'
    onCurrentIndexChanged: {
        currentText=model[currentIndex]
    }
    Rectangle{
        anchors.fill: r
        border.width: unikSettings?unikSettings.borderWidth:1
        border.color: app&&app.c2?app.c2:'black'
        radius: unikSettings?unikSettings.radius:6
        color: app&&app.c1?app.c1:'white'

        Rectangle{
            id: f
            width: app.fs*0.5
            height: width
            rotation: 45
            anchors.right: parent.right
            anchors.rightMargin: app.fs
            anchors.verticalCenter: parent.verticalCenter
            color: app.c2
        }
        Rectangle{
            width: app.fs*1.2
            height: f.height*0.6
            anchors.bottom: f.verticalCenter
            anchors.horizontalCenter: f.horizontalCenter
            color: app.c1
        }
        Text{
            id: labelCurrentText
            font.pixelSize: r.fontSize
            color: app&&app.c2?app.c2:'black'
            text: r.model.length>0?r.model[r.currentIndex]:'Empty'
            anchors.centerIn: parent
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                lvItems.visible=!lvItems.visible
            }
        }
    }
    ListView{
        id: lvItems
        anchors.top: r.bottom
        visible: false
        width: r.width
        height: r.contentHeight
        delegate:delItem
        clip: true
        model: []
        ScrollBar.vertical: ScrollBar{}
    }
    Component{
        id: delItem
        Rectangle{
            width: r.width
            height: txtItem.contentHeight+app.fs
            border.width: 2
            border.color: app.c2
            color: app.c1
            Text {
                id: txtItem
                text: modelData
                color: r.fontColor
                width: r.width-r.height*0.1
                wrapMode: Text.WordWrap
                font.pixelSize: r.fontSize
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: app.fs*0.5
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    lvItems.visible=false
                    r.currentIndex=index
                }
            }
        }
    }
}
