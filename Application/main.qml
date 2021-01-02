import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
import KeyGenerator.Impl 1.0

ApplicationWindow {
    maximumWidth: 450
    minimumWidth: 450
    maximumHeight: 300
    minimumHeight: 300
    visible: true
    title: qsTr("SSH Key Generator")

    Material.theme: currentTheme

    property int currentTheme: Material.Dark
    property color colorText: Material.color(Material.Grey)
    property color colorBackground: Material.background

    KeyGenerator {
        id: _keyGenerator
    }
}
