;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Norwegian nynorsk (2068)
;By Vebjoern Sture and H�vard Mork (www.firefox.no)

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "NorwegianNynorsk"

  !define MUI_LANGNAME "Norwegian nynorsk" ;Use only ASCII characters (if this is not possible, use the English name)
  
  !define MUI_TEXT_WELCOME_INFO_TITLE "Velkommen til $(^NameDA) innstallasjonsvegvisar"
  !define MUI_TEXT_WELCOME_INFO_TEXT "Denne vegvisaren vil leie deg gjennom installeringa av $(^NameDA).\n\nDet er tilr�dd at du avsluttar alle andre program f�r du held fram. Dette vil la installeringsprogrammet oppdatera systemfiler utan at du m� starta datamaskinen p� nytt.\n\n$_CLICK"
  
  !define MUI_TEXT_LICENSE_TITLE "Lisensavtale"  
  !define MUI_TEXT_LICENSE_SUBTITLE "Les gjennom lisensavtalen f�r du startar installeringa av $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_TOP "Trykk Page Down-knappen for � sj� resten av lisensavtala."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Trykk p� �Godta� dersom du godtar betingelsane i avtala. Du m� godta avtala for � installere $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Trykk p� avkryssingsboksen nedanfor nedanfor dersom du godtar betingelsane i avtala. Du m� godta avtala for � installere $(^NameDA). $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Vel det f�rste alternativet nedanfor dersom du godtek vilk�ra i avtala. Du m� godta avtala for � installera $(^NameDA). $_CLICK"
  
  !define MUI_TEXT_COMPONENTS_TITLE "Vel komponentar"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Vel kva delar av $(^NameDA) du ynskjer � installera."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Beskriving"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Beveg musa over komponentene for � sj� beskrivinga."
  !else
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Vel eit komponent for � se beskrivinga."
  !endif
  
  !define MUI_TEXT_DIRECTORY_TITLE "Vel installasjonsmappe"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Vel kva mappe du vil installera $(^NameDA) i."
  
  !define MUI_TEXT_INSTALLING_TITLE "Installerer"
  !define MUI_TEXT_INSTALLING_SUBTITLE "Vent mens $(^NameDA) blir installert."
  
  !define MUI_TEXT_FINISH_TITLE "Installeringa er fullf�rt"
  !define MUI_TEXT_FINISH_SUBTITLE "Installeringa vart fullf�rt."
  
  !define MUI_TEXT_ABORT_TITLE "Installeringa vart avbroten"
  !define MUI_TEXT_ABORT_SUBTITLE "Installeringa vart ikkje fullf�rt."
  
  !define MUI_BUTTONTEXT_FINISH "&Fullf�r"
  !define MUI_TEXT_FINISH_INFO_TITLE "Installering fullf�rt"
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) er installert og klar til bruk.\n\nTrykk p� �Fullf�r� for � avslutte installeringa."
  !define MUI_TEXT_FINISH_INFO_REBOOT "Du m� starta datamaskinen p� nytt for � fullf�ra installeringa av $(^NameDA). Vil du starta p� nytt no?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Start p� nytt no"
  !define MUI_TEXT_FINISH_REBOOTLATER "Eg vil starta p� nytt seinare"
  !define MUI_TEXT_FINISH_RUN "&K�yr $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "&Syn lesmeg"
  
  !define MUI_TEXT_STARTMENU_TITLE "Vel mappe p� startmenyen"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Vel kva mappe snarvegane til $(^NameDA) skal liggja i."
  !define MUI_INNERTEXT_STARTMENU_TOP "Vel mappa du vil oppretta snarvegane til programmet i. Du kan �g skriva inn eit nytt namn for � laga ei ny mappe."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "Ikkje opprett snarvegar"
  
  !define MUI_TEXT_ABORTWARNING "Er du viss p� at du vil avslutta installeringa av $(^Name)?"
  
  
  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Velkommen til avinstallering av $(^NameDA)"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Denne vegvisaren vil leie deg gjennom avinstalleringen av $(^NameDA).\n\nF�r du fortsetter m� du forsikre deg om at $(^NameDA) ikkje er opent.\n\n$_CLICK"
  
  !define MUI_UNTEXT_CONFIRM_TITLE "Avinstaller $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Slett $(^NameDA) fr� datamaskinen."
  
  !define MUI_UNTEXT_LICENSE_TITLE "Lisensavtale"  
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Les gjennom lisensavtalen f�r du startar avinstalleringa av $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Trykk p� �Godta� dersom du godtar betingelsane i avtala. Du m� godta avtala for � avinstallera $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Trykk p� avkryssingsboksen nedanfor nedanfor dersom du godtar betingelsane i avtala. Du m� godta avtala for � avinstallera $(^NameDA). $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Vel det f�rste alternativet nedanfor dersom du godtar betingelsane i avtala. Du m� godta avtala for � avinstallera $(^NameDA). $_CLICK"
  
  !define MUI_UNTEXT_COMPONENTS_TITLE "Vel funksjonar"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Vel kva for funksjonar du vil avinstallera i $(^NameDA)."
  
  !define MUI_UNTEXT_DIRECTORY_TITLE "Vel avinstalleringplassering"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Vel mappa du vil avinstallere $(^NameDA) fr�."
  
  !define MUI_UNTEXT_UNINSTALLING_TITLE "Avinstallerer"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Vent medan $(^NameDA) vert avinstallert."
    
  !define MUI_UNTEXT_FINISH_TITLE "Avinstallering ferdig"
  !define MUI_UNTEXT_FINISH_SUBTITLE "Avinstallering ble utf�rt uten feil."
  
  !define MUI_UNTEXT_ABORT_TITLE "Avinstallering broten"
  !define MUI_UNTEXT_ABORT_SUBTITLE "Avinstallering ble ikkje utf�rt riktig."
  
  !define MUI_UNTEXT_FINISH_INFO_TITLE "Fullf�rer avinstalleringa av $(^NameDA)"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) er no avinstallert fr� datamaskina di.\n\nTrykk p� �Fullf�r� for � avslutta denne vegvisaren."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "Datamaskinen m� starta p� nytt for � fullf�ra avinstalleringa av $(^NameDA). Vil du starta datamaskina p� nytt no?"
  
  !define MUI_UNTEXT_ABORTWARNING "Er du viss p� at du vil avbryta avinstalleringa av $(^Name)?"
  
!insertmacro MUI_LANGUAGEFILE_END