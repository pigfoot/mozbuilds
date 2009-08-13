;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.72

;Language: Swedish (1053)
;By Magnus Bonnevier (magnus.bonnevier@telia.com), updated by Rickard Angbratt (r.angbratt@home.se), updated by Ulf Axelsson (ulf.axelsson@gmail.com)

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Swedish"

  !define MUI_LANGNAME "Svenska" ;Use only ASCII characters (if this is not possible, use the English name)

  !define MUI_TEXT_WELCOME_INFO_TITLE "V�lkommen till installationsguiden f�r $(^NameDA)."
  !define MUI_TEXT_WELCOME_INFO_TEXT "Denna guide tar dig igenom installationen av $(^NameDA).\r\n\r\nDet rekommenderas att du avslutar alla andra program innan du forts�tter installationen. Detta till�ter att installationen uppdaterar n�dv�ndiga systemfiler utan att beh�va starta om din dator.\r\n\r\n$_CLICK"
  
  !define MUI_TEXT_LICENSE_TITLE "Licensavtal"  
  !define MUI_TEXT_LICENSE_SUBTITLE "Var v�nlig l�s igenom licensvillkoren innan du installerar $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_TOP "Tryck Page Down f�r att se resten av licensavtalet."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Om du accepterar villkoren i avtalet, klicka Jag Godk�nner f�r att forts�tta. Du m�ste acceptera avtalet f�r att installera $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Om du accepterar villkoren i avtalet, klicka i checkrutan nedan. Du m�ste acceptera avtalet f�r att installera $(^NameDA). $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Om du accepterar villkoren i avtalet, v�lj det f�rsta alternativet nedan. Du m�ste acceptera avtalet f�r att installera $(^NameDA). $_CLICK"
  
  !define MUI_TEXT_COMPONENTS_TITLE "V�lj komponenter"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "V�lj vilka alternativ av $(^NameDA) som du vill installera."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Beskrivning"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "H�ll muspekaren �ver ett alternativ f�r att se dess beskrivning."
  !else
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "V�lj ett alternativ f�r att se dess beskrivning."
  !endif
  
  !define MUI_TEXT_DIRECTORY_TITLE "V�lj installationsv�g"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "V�lj katalog att installera $(^NameDA) i."
  
  !define MUI_TEXT_INSTALLING_TITLE "Installerar"
  !define MUI_TEXT_INSTALLING_SUBTITLE "Var v�nlig v�nta medan $(^NameDA) installeras."
  
  !define MUI_TEXT_FINISH_TITLE "Installationen �r klar"
  !define MUI_TEXT_FINISH_SUBTITLE "Guiden avslutades korrekt."
  
  !define MUI_TEXT_ABORT_TITLE "Installationen avbr�ts"
  !define MUI_TEXT_ABORT_SUBTITLE "Guiden genomf�rdes inte korrekt."
  
  !define MUI_BUTTONTEXT_FINISH "&Slutf�r"
  !define MUI_TEXT_FINISH_INFO_TITLE "Avslutar installationsguiden f�r $(^NameDA)."
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) har installerats p� din dator.\r\n\r\nKlicka p� Slutf�r f�r att avsluta guiden."
  !define MUI_TEXT_FINISH_INFO_REBOOT "Din dator m�ste startas om f�r att fullborda installationen av $(^NameDA). Vill du starta om nu?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Starta om nu"
  !define MUI_TEXT_FINISH_REBOOTLATER "Jag vill starta om sj�lv senare"
  !define MUI_TEXT_FINISH_RUN "&K�r $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "&Visa Readme-filen"
  
  !define MUI_TEXT_STARTMENU_TITLE "V�lj Startmenykatalog"
  !define MUI_TEXT_STARTMENU_SUBTITLE "V�lj en Startmenykatalog f�r programmets genv�gar."
  !define MUI_INNERTEXT_STARTMENU_TOP "V�lj startmenykatalog i vilken du vill skapa programmets genv�gar. Du kan ange ett eget namn f�r att skapa en ny katalog."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "Skapa ej genv�gar"
  
  !define MUI_TEXT_ABORTWARNING "�r du s�ker p� att du vill avbryta installationen av $(^Name)?"  
  

  !define MUI_UNTEXT_WELCOME_INFO_TITLE "V�lkommen till avinstallationsguiden f�r $(^NameDA)."
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Denna guide tar dig igenom avinstallationen av $(^NameDA).\r\n\r\nInnan du startar avinstallationen, f�rs�kra dig om att $(^NameDA) inte k�rs.\r\n\r\n$_CLICK"

  !define MUI_UNTEXT_CONFIRM_TITLE "Avinstallera $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Ta bort $(^NameDA) fr�n din dator."

  !define MUI_UNTEXT_LICENSE_TITLE "Licensavtal"
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Var v�nlig l�s igenom licensvillkoren innan du avinstallerar $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Om du accepterar villkoren i avtalet, klicka Jag Godk�nner f�r att forts�tta. Du m�ste acceptera avtalet f�r att avinstallera $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Om du accepterar villkoren i avtalet, klicka i checkrutan nedan. Du m�ste acceptera avtalet f�r att avinstallera $(^NameDA). $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Om du accepterar villkoren i avtalet, v�lj det f�rsta alternativet nedan. Du m�ste acceptera avtalet f�r att avinstallera $(^NameDA). $_CLICK"

  !define MUI_UNTEXT_COMPONENTS_TITLE "V�lj komponenter"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "V�lj vilka alternativ av $(^NameDA) som du vill avinstallera."

  !define MUI_UNTEXT_DIRECTORY_TITLE "V�lj avinstallationsv�g"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "V�lj katalog att avinstallera $(^NameDA) fr�n."

  !define MUI_UNTEXT_UNINSTALLING_TITLE "Avinstallerar"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Var v�nlig v�nta medan $(^NameDA) avinstalleras."
    
  !define MUI_UNTEXT_FINISH_TITLE "Avinstallationen genomf�rd"
  !define MUI_UNTEXT_FINISH_SUBTITLE "Avinstallationen genomf�rdes korrekt."
  
  !define MUI_UNTEXT_ABORT_TITLE "Avinstallationen avbruten"
  !define MUI_UNTEXT_ABORT_SUBTITLE "Avinstallationen genomf�rdes inte korrekt."

  !define MUI_UNTEXT_FINISH_INFO_TITLE "Avslutar avinstallationsguiden f�r $(^NameDA)."
  !define MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) komponenter har avinstallerats fr�n din dator.\r\n\r\nKlicka p� Slutf�r f�r att avsluta guiden."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "Din dator m�ste startas om f�r att fullborda avinstallationen av $(^NameDA). Vill du starta om nu?"

  !define MUI_UNTEXT_ABORTWARNING "�r du s�ker p� att du vill avbryta avinstallationen av $(^Name)?"

!insertmacro MUI_LANGUAGEFILE_END