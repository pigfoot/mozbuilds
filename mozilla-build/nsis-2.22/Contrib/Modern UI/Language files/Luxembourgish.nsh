;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Luxembourgish (1031)
;By Snowloard, changes by Philo

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Luxembourgish"

  !define MUI_LANGNAME "L�tzebuergesch" ;Use only ASCII characters (if this is not possible, use the English name)

  !define MUI_TEXT_WELCOME_INFO_TITLE "W�llkomm beim Installatiouns-\r\nAssistent vun $(^NameDA)"
  !define MUI_TEXT_WELCOME_INFO_TEXT "D�sen Assistent w�rt dech duech d'Installatioun vun $(^NameDA) begleeden.\r\n\r\nEt g�tt ugeroden alleguer d'Programmer di am Moment lafen zouzemaan, datt best�mmt Systemdateien ouni Neistart ersat k�nne ginn.\r\n\r\n$_CLICK"

  !define MUI_TEXT_LICENSE_TITLE "Lizenzofkommes"
  !define MUI_TEXT_LICENSE_SUBTITLE "W.e.g. d'Lizenzoofkommes liesen, ierts de mat der Installatioun weiderfiers."
  !define MUI_INNERTEXT_LICENSE_TOP "Dr�ck d'PageDown-Tast fir den Rescht vum Ofkommes ze liesen."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Wanns de alleguer d'Bedengungen vum Ofkommes akzept�iers, klick op Unhuelen. Du muss alleguer d'Fuerderungen unerkennen, fir $(^NameDA) install�ieren ze k�nnen."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Wanns de alleguer d'Bedengungen vum Ofkommes akzept�iers, aktiv�ier d'K�schtchen. Du muss alleguer d'Fuerderungen unerkennen, fir $(^NameDA) install�ieren ze k�nnen. $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Wanns de alleguer d'Bedengungen vum Ofkommes akzept�iers, wiel �nnen di entspriechend �ntwert aus. Du muss alleguer d'Fuerderungen unerkennen, fir $(^NameDA) install�ieren ze k�nnen. $_CLICK"

  !define MUI_TEXT_COMPONENTS_TITLE "Komponenten auswielen"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Wiel d'Komponenten aus, d�is de w�lls install�ieren."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Beschreiwung"
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Hal den Mausfeil iwwer eng Komponent, fir d'Beschreiwung dervun ze gesinn."

  !define MUI_TEXT_DIRECTORY_TITLE "Zielverzeechnes auswielen"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Wiel den Dossier aus, an deen $(^NameDA) install�iert soll ginn."

  !define MUI_TEXT_INSTALLING_TITLE "Install�ieren..."
  !define MUI_TEXT_INSTALLING_SUBTITLE "Waard w.e.g w�hrend deem $(^NameDA) install�iert g�tt."

  !define MUI_TEXT_FINISH_TITLE "Installatioun f�rdeg"
  !define MUI_TEXT_FINISH_SUBTITLE "D'Installatioun ass feelerfr�i oofgeschloss ginn."

  !define MUI_TEXT_ABORT_TITLE "Installatioun ofgebrach"
  !define MUI_TEXT_ABORT_SUBTITLE "D'Installatioun ass net komplett ofgeschloss ginn."

  !define MUI_BUTTONTEXT_FINISH "&F�rdeg man"
  !define MUI_TEXT_FINISH_INFO_TITLE "D'Installatioun vun $(^NameDA) g�tt ofgeschloss."
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) ass um Computer install�iert ginn.\r\n\r\nKlick op f�rdeg maan, fir den Installatiouns-Assistent zou ze maan.."
  !define MUI_TEXT_FINISH_INFO_REBOOT "Den Windows muss nei gestart ginn, fir d'Installatioun vun $(^NameDA) ofzeschl�issen. W�lls de Windows lo n�i starten?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Lo n�i starten"
  !define MUI_TEXT_FINISH_REBOOTLATER "Sp�ider manuell n�i starten"
  !define MUI_TEXT_FINISH_RUN "$(^NameDA) op maan"
  !define MUI_TEXT_FINISH_SHOWREADME "Liesmech op maan"

  !define MUI_TEXT_STARTMENU_TITLE "Startmen�-Dossier best�mmen"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Best�mm een Startman�-Dossier an deen d'Programmofkierzungen kommen."
  !define MUI_INNERTEXT_STARTMENU_TOP "Best�mm een Startman�-Dossier an deen d'Programmofkierzungen kommen. Wanns de een n�ien Dossier man wells, g�ff deem s�in zuk�nftegen Numm an."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "Keng Ofkierzungen man"

  !define MUI_TEXT_ABORTWARNING "Bass de s�cher, dass de d'Installatioun vun $(^Name) ofbriechen w�lls?"


  !define MUI_UNTEXT_WELCOME_INFO_TITLE "W�llkomm am Desinstallatiouns-\r\n\Assistent fir $(^NameDA)"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Desen Assistent begleet dech duech d'Desinstallatioun vun $(^NameDA).\r\n\r\nW.e.g. maach $(^NameDA) zu, ierts de mat der Desinstallatioun uf�nks.\r\n\r\n$_CLICK"

  !define MUI_UNTEXT_CONFIRM_TITLE "Desinstallatioun vun $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "$(^NameDA) gett vum Computer desinstall�iert."

  !define MUI_UNTEXT_LICENSE_TITLE "Lizenzofkommes"
  !define MUI_UNTEXT_LICENSE_SUBTITLE "W.e.g. lies d'Lizenzofkommes duech ierts de mat der Desinstallatioun vun $(^NameDA) weiderfiers."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Wanns de d'Fuerderungen vum Ofkommes akzept�iers, klick op unhuelen. Du muss d'Ofkommes akzept�ieren, fir $(^NameDA) k�nnen ze desinstall�ieren."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Wanns de d'Fuerderungen vum Ofkommes akzept�iers, aktiv�ier d'K�schtchen. Du muss d'Ofkommes akzept�ieren, fir $(^NameDA) k�nnen ze desinstall�ieren. $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Wanns de d'Fuerderungen vum Ofkommes akzept�iers, wiel �nnen di entspriechend Optioun. Du muss d'Oofkommes akzept�ieren, fir $(^NameDA) kennen ze desinstall�ieren. $_CLICK"

  !define MUI_UNTEXT_COMPONENTS_TITLE "Komponenten auswielen"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Wiel eng Komponent aus, d�is de desinstall�ieren w�lls."

  !define MUI_UNTEXT_DIRECTORY_TITLE "Dossier fir d'Desinstallatioun wielen"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Wiel den Dossier aus, aus dem $(^NameDA) desinstall�iert soll ginn."

  !define MUI_UNTEXT_UNINSTALLING_TITLE "Desinstall�ieren..."
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "W.e.g. waard, w�hrend deems $(^NameDA) desinstall�iert g�tt."

  !define MUI_UNTEXT_FINISH_TITLE "Desinstallatioun ofgeschloss"
  !define MUI_UNTEXT_FINISH_SUBTITLE "D'Desinstallatioun ass erfollegr�ich ofgeschloss ginn."

  !define MUI_UNTEXT_ABORT_TITLE "Desinstallatioun oofbriechen"
  !define MUI_UNTEXT_ABORT_SUBTITLE "Desinstallatioun ass net erfollegr�ich ofgeschloss ginn."

  !define MUI_UNTEXT_FINISH_INFO_TITLE "Desinstallatioun vun $(^NameDA) g�tt ofgeschloss"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) ass vum Computer desinstall�iert ginn.\r\n\r\nKlick op Ofschl�issen fir den Assistent zou ze maan."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "Windows muss n�i gestart gin, fir d'Desinstallatioun vun $(^NameDA) ze vervollst�nnegen. W�lls de Windows lo n�i starten?"

  !define MUI_UNTEXT_ABORTWARNING "Bass de s�cher, dass de d'Desinstallatioun vun $(^Name) ofbriechen w�lls?"

!insertmacro MUI_LANGUAGEFILE_END