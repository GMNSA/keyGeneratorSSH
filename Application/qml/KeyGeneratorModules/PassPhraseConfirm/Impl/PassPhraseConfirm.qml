import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

RowLayout {
    id: _passPhraseConfirm

    spacing: 20

    Label {
        id: _labelPassPhraseConfirm

        color: colorText
        Layout.preferredWidth: parent.width * 0.2
        text: "Confirm: "
    }

    TextField {
        id: _textFieldPassPhraseConfirm
        Layout.fillWidth: true
        placeholderText: qsTr("confirm passphrase")
        font.family: "Helvetica"
        font.pixelSize: 15
        color: colorText
        focus: false
        echoMode: TextInput.Password
    }
}
