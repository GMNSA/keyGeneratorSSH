import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

RowLayout {
    id: _filename
    spacing: fSpacing * 2
    Label {
        id: _labelFilename

        color: colorText
        Layout.preferredWidth: parent.width * 0.2
        text: "Filename: "
    }

    TextField {
        Layout.fillWidth: true
        placeholderText: qsTr("Enter the filename")
        font.family: "Helvetica"
        font.pixelSize: fFont
        color: colorText
        focus: true
    }

    Button {
        id: _button1
        text: "Browse..."


        onClicked: {
            _fileDialog.open();
            console.log("Button Pressed. Entered text: " + textField1.text);
        }
    }

} // --------------------------- end _filename
