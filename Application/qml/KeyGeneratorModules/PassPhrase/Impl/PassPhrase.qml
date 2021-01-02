import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

RowLayout {
    id: _passPhrase

    spacing: 20

    Label {
        id: _labelPassPhrase

        color: colorText
        Layout.preferredWidth: parent.width * 0.2
        text: "Pass phrase: "
    }

    TextField {
        id: _textFieldPassPhrase
        Layout.fillWidth: true
        placeholderText: qsTr("passphrase")
        font.family: "Helvetica"
        font.pixelSize: 15
        color: colorText
        focus: false
        echoMode: TextInput.Password
    }
} // ----------------------------- end passPhrase
