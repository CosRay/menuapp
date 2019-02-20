import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Action {
        id: actionNew
        text: qsTr("&New")
        shortcut: StandardKey.New
        icon.name: "document-new"
        onTriggered: myArea.placeholderText = "To do- New"
    }

    Action {
        id: actionOpen
        text: qsTr("&Open")
        shortcut: StandardKey.Open
        icon.name: "document-open"
        onTriggered: myArea.placeholderText = "To do- Open"
    }

    Action {
        id: actionSave
        text: qsTr("&Save")
        shortcut: StandardKey.Save
        icon.name: "document-save"
        onTriggered: myArea.placeholderText = "To do- Save"
    }

    menuBar: MenuBar {
        Menu {
            title: "File"
            MenuItem {action: actionNew}
            MenuItem {action: actionOpen}
            MenuItem {action: actionSave}
        }
    }

    header:   ToolBar {
        RowLayout {
            ToolButton {action: actionNew}
            ToolButton {action: actionOpen}
            ToolButton {action: actionSave}
        }
    }


    TextArea {
        id: myArea
        anchors.fill: parent
    }

}









