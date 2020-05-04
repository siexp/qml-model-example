import QtQuick 2.14
import QtQuick.Window 2.14

//import "User.js" as UserModel
import com.github.user 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

//    UserJsUi {
//        id: user
//    }

//    TextEdit {
//        id: text
//        y: 200

//        focus: true
//        text: UserModel.instance.username
//        font.pixelSize: 32

//        // unfortunately JS will not propagate property modification event
//        // so text on UserJsUi still remain the same
//        onEditingFinished: {
//            UserModel.instance.username = this.text
//            console.log(UserModel.instance.username)
//        }
//    }


    UserCppUi {
        id: user
    }

    TextEdit {
        id: text
        y: 200

        focus: true
        text: User.username
        font.pixelSize: 32

        // cpp model will propagate changes so whenever you modify username
        // you will see updates on UserCppUi
        onEditingFinished: {
            User.username = this.text
            console.log(User.username)
        }
    }
}
