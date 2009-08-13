;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Norwegian (2068)
;By Jonas Lindsr�m (jonasc_88@hotmail.com) Reviewed and fixed by Jan Ivar Beddari, d0der at online.no

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Norwegian"

  !define MUI_LANGNAME "Norwegian" ;Use only ASCII characters (if this is not possible, use the English name)
  
  !define MUI_TEXT_WELCOME_INFO_TITLE "Velkommen til veiviseren for installasjon av $(^NameDA) "
  !define MUI_TEXT_WELCOME_INFO_TEXT "Denne veiviseren vil lede deg gjennom installasjonen av $(^NameDA).\r\n\r\nDet anbefales at du avslutter alle andre programmer f�r du fortsetter. Dette vil la installasjonsprogrammet forandre p� systemfiler uten at du m� starte datamaskinen p� nytt.\r\n\r\n$_CLICK"

  !define MUI_TEXT_LICENSE_TITLE "Lisensavtale"  
  !define MUI_TEXT_LICENSE_SUBTITLE "Vennligst les gjennom lisensavtalen f�r du starter installasjonen av $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_TOP "Trykk Page Down knappen for � se resten av lisensavtalen."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Hvis du godtar lisensavtalen trykk Godta for � fortsette. Du m� godta lisensavtalen for � installere $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Hvis du godtar lisensavtalen, kryss av p� merket under. Du m� godta lisensavtalen for � installere $(^NameDA). $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Hvis du godtar lisensavtalen, velg det f�rste alternativet ovenfor. Du m� godta lisensavtalen for � installere $(^NameDA). $_CLICK"
  
  !define MUI_TEXT_COMPONENTS_TITLE "Velg komponenter"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Velg hvilke deler av $(^NameDA) du �nsker � installere."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Beskrivelse"
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Beveg musen over komponentene for � se beskrivelsen."
  
  !define MUI_TEXT_DIRECTORY_TITLE "Velg installasjonsmappe"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Velg hvilken mappe du vil installere $(^NameDA) i."
  
  !define MUI_TEXT_INSTALLING_TITLE "Installasjonen p�g�r"
  !define MUI_TEXT_INSTALLING_SUBTITLE "Vennligst vent mens $(^NameDA) blir installert."
  
  !define MUI_TEXT_FINISH_TITLE "Installasjonen er ferdig"
  !define MUI_TEXT_FINISH_SUBTITLE "Installasjonen ble fullf�rt uten feil."
  
  !define MUI_TEXT_ABORT_TITLE "Installasjonen er avbrutt"
  !define MUI_TEXT_ABORT_SUBTITLE "Installasjonen ble ikke fullf�rt riktig."
  
  !define MUI_BUTTONTEXT_FINISH "&Ferdig"
  !define MUI_TEXT_FINISH_INFO_TITLE "Avslutter $(^NameDA) installasjonsveiviser"
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) er klart til bruk p� din datamskin.\r\n\r\nTrykk Ferdig for � avslutte installasjonsprogrammet."
  !define MUI_TEXT_FINISH_INFO_REBOOT "Du m� starte datamaskinen p� nytt for � fullf�re installasjonen av $(^NameDA). Vil du starte datamaskinen p� nytt n�?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Ja. Start datamaskinen p� nytt n�"
  !define MUI_TEXT_FINISH_REBOOTLATER "Nei. Jeg vil starte datamaskinen p� nytt senere"
  !define MUI_TEXT_FINISH_RUN "&Kj�r $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "&Vis Readme filen"
  
  !define MUI_TEXT_STARTMENU_TITLE "Velg plassering p� startmenyen"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Velg hvilken mappe snarveiene til $(^NameDA) skal ligge i."
  !define MUI_INNERTEXT_STARTMENU_TOP "Velg mappe for snarveiene til programmet. Du kan ogs� skrive inn et nytt navn for � lage en ny mappe."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "Ikke lag snarveier"
  
  !define MUI_TEXT_ABORTWARNING "Er du sikker p� at du vil avslutte installasjonen av $(^Name)?"
  
  
  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Velkommen til veiviseren for avinstallasjon av $(^NameDA)"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Denne veiviseren vil lede deg gjennom avinstallasjonen av $(^NameDA).\r\n\r\nF�r du fortsetter m� du forsikre deg om at $(^NameDA) ikke kj�rer.\r\n\r\n$_CLICK"
  
  !define MUI_UNTEXT_CONFIRM_TITLE "Avinstaller $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Fjern $(^NameDA) fra din datamaskin."
  
  !define MUI_UNTEXT_LICENSE_TITLE "Lisensavtale"  
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Vennligst les gjennom lisensavtalen f�r du avinstallerer $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Hvis du godtar lisensavtalen trykk Godta for � fortsette.  Du m� godta lisensavtalen for � avintallere $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Hvis du godtar lisensavtalen, kryss av p� merket under. Du m� godta lisensavtalen for � avinstallere $(^NameDA). $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Hvis du godtar lisensavtalen, velg det f�rste alternativet ovenfor. Du m� godta lisensavtalen for � avinstallere $(^NameDA). $_CLICK"
  
  !define MUI_UNTEXT_COMPONENTS_TITLE "Velg komponenter"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Velg hvilke deler av $(^NameDA) du �nsker � avinstallere."
  
  !define MUI_UNTEXT_DIRECTORY_TITLE "Velg mappe for avinstallasjon"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Velg mappen du vil avinstallere $(^NameDA) fra."
    
  !define MUI_UNTEXT_UNINSTALLING_TITLE "Avinstallasjon p�g�r"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Vennligst vent mens $(^NameDA) blir avinstallert."

  !define MUI_UNTEXT_FINISH_TITLE "Avinstallasjon ferdig"
  !define MUI_UNTEXT_FINISH_SUBTITLE "Avinstallasjonen ble utf�rt uten feil."
  
  !define MUI_UNTEXT_ABORT_TITLE "Avinstallasjon avbrutt"
  !define MUI_UNTEXT_ABORT_SUBTITLE "Avinstallasjonen ble ikke utf�rt riktig."
  
  !define MUI_UNTEXT_FINISH_INFO_TITLE "Fullf�rer avinstallasjonen av $(^NameDA)"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) har blitt avinstallert fra din datamaskin.\r\n\r\nTrykk p� ferdig for � avslutte denne veiviseren."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "Datamaskinen m� starte p� nytt for � fullf�re avinstallasjonen av $(^NameDA). Vil du starte datamaskinen p� nytt n�?"  

  !define MUI_UNTEXT_ABORTWARNING "Er du sikker p� at du vil avbryte avinstallasjonen av $(^Name)?"

!insertmacro MUI_LANGUAGEFILE_END