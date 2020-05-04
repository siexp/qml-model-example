import QtQuick 2.0

import "User.js" as UserModel

Rectangle {
    Text {
        id: username
        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
        }

        text: UserModel.instance.username
        font.pixelSize: 32

        onTextChanged: {
            console.log("Username updated:", UserModel.instance.username)
        }
    }

    Text {
        id: birthday
        anchors {
            top: username.bottom
            topMargin: 10
            left: parent.left
            right: parent.right
        }

        text: UserModel.instance.birthday.toLocaleString()
        font.pixelSize: 32
    }
}
