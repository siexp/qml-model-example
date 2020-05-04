import QtQuick 2.0

import com.github.user 1.0

Rectangle {
    Text {
        id: username
        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
        }

        text: User.username
        font.pixelSize: 32

        onTextChanged: {
            console.log("Username updated:", User.username)
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

        text: User.birthday.toLocaleString()
        font.pixelSize: 32
    }
}
