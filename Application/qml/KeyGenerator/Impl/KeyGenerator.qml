import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

import KeyGeneratorModules.KeyType.Impl 1.0
import KeyGeneratorModules.FileName.Impl 1.0
import KeyGeneratorModules.PassPhrase.Impl 1.0
import KeyGeneratorModules.PassPhraseConfirm.Impl 1.0

Rectangle {
    id: _root


    property int fSpacing: 5
    property int fMargin: 20
    property int fFont: 15

    anchors.fill: parent
    color: Material.background

    ColumnLayout {
        id: _columntLayoutTotal

        anchors.fill: parent
        spacing: spacingColumnLayou
        anchors.margins: fMargin

        /* *****      KeyType     ***** */

        KeyType {
            id: _keyType
        }  // -------------------end keyType

        /* *****      FileName     ***** */

        FileName {
            id: _fileName
        }  // --------------------------- end _filename

        /* *****      PassPhrase     ***** */

        PassPhrase {
            id: _passPhrase
        }  // ----------------------------- end passPhrase

        /* *****      PassPhraseConfirm     ***** */

        PassPhraseConfirm {
            id: _passPhraseConfirm
        }

        /* *****      Buttons (generate|Quit)     ***** */
        RowLayout {
            Button {
                text: "Generate"
            }

            Button {
                text: "quit"
                onPressed: Qt.quit()
            }
        }
    }


    /* *****      FileDialog     ***** */

    FileDialog{
        id: _fileDialog;
        title: "Please choose a file";
        nameFilters: ["Image Files (*.txt *.png *.gif)"];
        selectFolder: false
        visible: false
        onAccepted: {
            console.log("User has selected " + dialogFile.folder);
            _fileDialog.close()
        }
    }

}
