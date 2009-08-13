;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: German (1031)
;By L.King, changes by K. Windszus & R. Bisswanger & M. Simmack & D. Wei�

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "German"

  !define MUI_LANGNAME "Deutsch" ;Use only ASCII characters (if this is not possible, use the English name)

  !define MUI_TEXT_WELCOME_INFO_TITLE "Willkommen beim Installations-\r\nAssistenten f�r $(^NameDA)"
  !define MUI_TEXT_WELCOME_INFO_TEXT "Dieser Assistent wird Sie durch die Installation von $(^NameDA) begleiten.\r\n\r\nEs wird empfohlen vor der Installation alle anderen Programme zu schlie�en, damit bestimmte Systemdateien ohne Neustart ersetzt werden k�nnen.\r\n\r\n$_CLICK"

  !define MUI_TEXT_LICENSE_TITLE "Lizenzabkommen"
  !define MUI_TEXT_LICENSE_SUBTITLE "Bitte lesen Sie die Lizenzbedingungen durch, bevor Sie mit der Installation fortfahren."
  !define MUI_INNERTEXT_LICENSE_TOP "Dr�cken Sie die Bild-nach-unten Taste, um den Rest des Abkommens zu sehen."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Falls Sie alle Bedingungen des Abkommens akzeptieren, klicken Sie auf Annehmen. Sie m�ssen die Lizenzvereinbarungen anerkennen, um $(^NameDA) installieren zu k�nnen."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Falls Sie alle Bedingungen des Abkommens akzeptieren, aktivieren Sie das K�stchen. Sie m�ssen die Lizenzvereinbarungen anerkennen, um $(^NameDA) installieren zu k�nnen. $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Falls Sie alle Bedingungen des Abkommens akzeptieren, w�hlen Sie unten die entsprechende Option. Sie m�ssen die Lizenzvereinbarungen anerkennen, um $(^NameDA) installieren zu k�nnen. $_CLICK"

  !define MUI_TEXT_COMPONENTS_TITLE "Komponenten ausw�hlen"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "W�hlen Sie die Komponenten aus, die Sie installieren m�chten."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Beschreibung"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Bewegen Sie den Mauszeiger �ber eine Komponente, um ihre Beschreibung zu sehen."
  !else
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Selektieren Sie eine Komponente, um ihre Beschreibung zu sehen."
  !endif

  !define MUI_TEXT_DIRECTORY_TITLE "Zielverzeichnis ausw�hlen"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "W�hlen Sie das Verzeichnis aus, in das $(^NameDA) installiert werden soll."

  !define MUI_TEXT_INSTALLING_TITLE "Installiere..."
  !define MUI_TEXT_INSTALLING_SUBTITLE "Bitte warten Sie, w�hrend $(^NameDA) installiert wird."

  !define MUI_TEXT_FINISH_TITLE "Die Installation ist vollst�ndig"
  !define MUI_TEXT_FINISH_SUBTITLE "Die Installation wurde erfolgreich abgeschlossen."

  !define MUI_TEXT_ABORT_TITLE "Abbruch der Installation"
  !define MUI_TEXT_ABORT_SUBTITLE "Die Installation wurde nicht vollst�ndig abgeschlossen."

  !define MUI_BUTTONTEXT_FINISH "&Fertig stellen"
  !define MUI_TEXT_FINISH_INFO_TITLE "Die Installation von $(^NameDA) wird abgeschlossen"
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) wurde auf Ihrem Computer installiert.\r\n\r\nKlicken Sie auf Fertig stellen, um den Installations-Assistenten zu schlie�en."
  !define MUI_TEXT_FINISH_INFO_REBOOT "Windows muss neu gestartet werden, um die Installation von $(^NameDA) zu vervollst�ndigen. M�chten Sie Windows jetzt neu starten?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Jetzt neu starten"
  !define MUI_TEXT_FINISH_REBOOTLATER "Windows sp�ter selbst neu starten"
  !define MUI_TEXT_FINISH_RUN "$(^NameDA) ausf�hren"
  !define MUI_TEXT_FINISH_SHOWREADME "Liesmich anzeigen"

  !define MUI_TEXT_STARTMENU_TITLE "Startmen�-Ordner bestimmen"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Bestimmen Sie einen Startmen�-Ordner f�r die Programmverkn�pfungen."
  !define MUI_INNERTEXT_STARTMENU_TOP "W�hlen Sie den Startmen�-Ordner f�r die Programmverkn�pfungen aus. Falls Sie einen neuen Ordner erstellen m�chten, geben Sie dessen Namen ein."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "Keine Verkn�pfungen erstellen"

  !define MUI_TEXT_ABORTWARNING "Sind Sie sicher, dass Sie die Installation von $(^Name) abbrechen wollen?"


  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Willkommen beim Deinstallations-\r\nAssistenten f�r $(^NameDA)"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Dieser Assistent wird Sie durch die Deinstallation von $(^NameDA) begleiten.\r\n\r\nBitte beenden Sie $(^NameDA), bevor Sie mit der Deinstallation fortfahren.\r\n\r\n$_CLICK"

  !define MUI_UNTEXT_CONFIRM_TITLE "Deinstallation von $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "$(^NameDA) wird von Ihrem Computer entfernt."

  !define MUI_UNTEXT_LICENSE_TITLE "Lizenzabkommen"
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Bitte lesen Sie die Lizenzbedingungen durch, bevor Sie mit der Deinstallation von $(^NameDA) fortfahren."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Falls Sie alle Bedingungen des Abkommens akzeptieren, klicken Sie auf Annehmen. Sie m�ssen die Lizenzvereinbarungen anerkennen, um $(^NameDA) deinstallieren zu k�nnen."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Falls Sie alle Bedingungen des Abkommens akzeptieren, aktivieren Sie das K�stchen. Sie m�ssen die Lizenzvereinbarungen anerkennen, um $(^NameDA) deinstallieren zu k�nnen. $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Falls Sie alle Bedingungen des Abkommens akzeptieren, w�hlen Sie unten die entsprechende Option. Sie m�ssen die Lizenzvereinbarungen anerkennen, um $(^NameDA) deinstallieren zu k�nnen. $_CLICK"

  !define MUI_UNTEXT_COMPONENTS_TITLE "Komponenten ausw�hlen"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "W�hlen Sie die Komponenten aus, die Sie entfernen m�chten."

  !define MUI_UNTEXT_DIRECTORY_TITLE "Verzeichnis f�r Deinstallation ausw�hlen"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "W�hlen Sie das Verzeichnis aus, aus dem $(^NameDA) entfernt werden soll."

  !define MUI_UNTEXT_UNINSTALLING_TITLE "Deinstalliere..."
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Bitte warten Sie, w�hrend $(^NameDA) entfernt wird."

  !define MUI_UNTEXT_FINISH_TITLE "Die Deinstallation ist vollst�ndig"
  !define MUI_UNTEXT_FINISH_SUBTITLE "Die Deinstallation wurde erfolgreich abgeschlossen."

  !define MUI_UNTEXT_ABORT_TITLE "Abbruch der Deinstallation"
  !define MUI_UNTEXT_ABORT_SUBTITLE "Die Deinstallation wurde nicht vollst�ndig abgeschlossen."

  !define MUI_UNTEXT_FINISH_INFO_TITLE "Die Deinstallation von $(^NameDA) wird abgeschlossen"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) ist von ihrem Computer entfernt worden.\r\n\r\nKlicken Sie auf Fertig stellen, um den Assistenten zu schlie�en."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "Windows muss neu gestartet werden, um die Deinstallation von $(^NameDA) zu vervollst�ndigen. M�chten Sie Windows jetzt neu starten?"

  !define MUI_UNTEXT_ABORTWARNING "Sind Sie sicher, dass Sie die Deinstallation von $(^Name) abbrechen m�chten?"

!insertmacro MUI_LANGUAGEFILE_END