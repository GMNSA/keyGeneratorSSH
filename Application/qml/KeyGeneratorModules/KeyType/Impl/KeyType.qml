import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

RowLayout {
    id: _root
    spacing: 5
    Layout.fillWidth: true

    Label {
        id: _labelKeyType

        text: "Key type: "
        color: colorText
        Layout.preferredWidth: parent.width * 0.2
    }

    ComboBox {
        id: _comboBoxKeyType
        Layout.fillWidth: true
        model: ListModel {
            id: _model
            ListElement { text: "rsa" }
            ListElement { text: "Apple" }
            ListElement { text: "Coconut" }
        }
        onAccepted: {
            if (find(editText) === -1)
                _model.append({text: editText})
        }
    }

} // -------------------end keyType
