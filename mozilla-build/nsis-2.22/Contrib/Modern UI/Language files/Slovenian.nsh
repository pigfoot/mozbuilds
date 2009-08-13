;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Slovenian (1060)
;By Janez Dolinar, edited by Martin Srebotnjak - Lugos.si

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Slovenian"

  !define MUI_LANGNAME "Slovenski jezik" ;Use only ASCII characters (if this is not possible, use the English name)
  
  !define MUI_TEXT_WELCOME_INFO_TITLE "Dobrodo�li v �arovniku namestitve $(^NameDA)"
  !define MUI_TEXT_WELCOME_INFO_TEXT "Ta �arovnik vas vodi skozi namestitev programa $(^NameDA).\r\n\r\nPred namestitvijo je priporo�eno zapreti vsa ostala okna in programe. S tem omogo�ite nemoteno namestitev programa in potrebnih sistemskih datotek brez ponovnega zagona ra�unalnika.\r\n\r\n$_CLICK"
  
  !define MUI_TEXT_LICENSE_TITLE "Licen�na pogodba"  
  !define MUI_TEXT_LICENSE_SUBTITLE "Prosimo, da si ogledate pogoje licen�ne pogodbe pred namestitvijo $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_TOP "Za preostali del pogodbe pritisnite tipko 'Page Down'."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "�e se strinjate s pogoji, pritisnite Se strinjam. Da bi lahko namestili $(^NameDA), se morate s pogodbo strinjati."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "�e se strinjate z licen�nimi pogoji pogodbe, spodaj izberite ustrezno okence. Za namestitev $(^NameDA) se morate strinjati s pogoji pogodbe. $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "�e se strinjate z licen�nimi pogoji pogodbe, spodaj izberite prvo mo�nost. Za namestitev $(^NameDA) se morate strinjati s pogoji pogodbe. $_CLICK"
  
  !define MUI_TEXT_COMPONENTS_TITLE "Izbor komponent"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Izberite, katere komponente izdelka $(^NameDA) �elite namestiti."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Opis"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Povlecite mi�ko nad komponento, da vidite njen opis."
  !else
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Izberite komponento za prikaz njenega opisa."
  !endif
  
  !define MUI_TEXT_DIRECTORY_TITLE "Izberite pot namestive"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Izberite mapo, v katero �elite namestiti $(^NameDA)."
  
  !define MUI_TEXT_INSTALLING_TITLE "Name��anje poteka"
  !define MUI_TEXT_INSTALLING_SUBTITLE "Prosimo, po�akajte, $(^NameDA) se name��a."
  
  !define MUI_TEXT_FINISH_TITLE "Dokon�ana namestitev"
  !define MUI_TEXT_FINISH_SUBTITLE "Namestitev je uspe�no zaklju�ena."
  
  !define MUI_TEXT_ABORT_TITLE "Prekinjena namestitev"
  !define MUI_TEXT_ABORT_SUBTITLE "Namestitev ni bila uspe�no zaklju�ena."
  
  !define MUI_BUTTONTEXT_FINISH "Do&kon�aj"
  !define MUI_TEXT_FINISH_INFO_TITLE "Zaklju�evanje namestitve $(^NameDA)"
  !define MUI_TEXT_FINISH_INFO_TEXT "Aplikacija $(^NameDA) je bila name��ena na va� ra�unalnik.\r\n\r\nPritisnite Dokon�aj za zaprtje �arovnika."
  !define MUI_TEXT_FINISH_INFO_REBOOT "Za dokon�anje namestitve $(^NameDA) morate ponovno zagnati ra�unalnik. �elite zdaj ponovno zagnati ra�unalnik?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Ponovni zagon"
  !define MUI_TEXT_FINISH_REBOOTLATER "Ra�unalnik �elim ponovno zagnati kasneje"
  !define MUI_TEXT_FINISH_RUN "&Za�eni $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "&Poka�i BeriMe"
  
  !define MUI_TEXT_STARTMENU_TITLE "Izberite mapo menija Start"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Izberite mapo menija Start za bli�njice do $(^NameDA)."
  !define MUI_INNERTEXT_STARTMENU_TOP "Izberite mapo menija Start, kjer �elite ustvariti bli�njico do programa. �e vpi�ete novo ime, boste ustvarili istoimensko mapo."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "Ne ustvari bli�njic"
  
  !define MUI_TEXT_ABORTWARNING "Ste prepri�ani, da �elite prekiniti namestitev $(^Name)?"
  
  
  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Dobrodo�li v �arovniku za odstranitev $(^NameDA)"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Ta �arovnik vas bo vodil skozi odstranitev $(^NameDA).\r\n\r\nPreden pri�nete z odstranitvijo, se prepri�ajte, da aplikacija $(^NameDA) ni zagnana.\r\n\r\n$_CLICK"
  
  !define MUI_UNTEXT_CONFIRM_TITLE "Odstranitev $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Odstrani $(^NameDA) iz va�ega ra�unalnika."
  
  !define MUI_UNTEXT_LICENSE_TITLE "Licen�na pogodba"  
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Prosimo, da pred odstranitvijo $(^NameDA) pregledate pogoje licen�ne pogodbe."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "�e se strinjate s pogoji licen�ne pogodbe, izberite Se strinjam. Za odstranitev $(^NameDA) se morate strinjati s pogoji."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "�e se strinjate s pogoji licen�ne pogodbe, kliknite na okence spodaj. Za odstranitev $(^NameDA) se morate strinjati s pogoji. $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "�e se strinjate s pogoji licen�ne pogodbe, spodaj izberite prvo podano mo�nost. Za odstranitev $(^NameDA) se morate strinjati s pogoji. $_CLICK"
  
  !define MUI_UNTEXT_COMPONENTS_TITLE "Izbor komponent"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Izberite komponente $(^NameDA), ki jih �elite odstraniti."
  
  !define MUI_UNTEXT_DIRECTORY_TITLE "Izbor mape"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Izberite mapo, iz katere �elite odstraniti $(^NameDA)."
  
  !define MUI_UNTEXT_UNINSTALLING_TITLE "Odstranjevanje poteka"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Prosimo, po�akajte, dokler se aplikacija $(^NameDA) odstranjuje."
    
  !define MUI_UNTEXT_FINISH_TITLE "Odstranitev kon�ana"
  !define MUI_UNTEXT_FINISH_SUBTITLE "Odstranitev je uspe�no kon�ana."
  
  !define MUI_UNTEXT_ABORT_TITLE "Odstranitev prekinjena"
  !define MUI_UNTEXT_ABORT_SUBTITLE "Odstranitev ni bila kon�ana uspe�no."
  
  !define MUI_UNTEXT_FINISH_INFO_TITLE "�arovnik za odstranitev $(^NameDA) se zaklju�uje"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "Aplikacija $(^NameDA) je odstranjena iz va�ega ra�unalnika.\r\n\r\nKliknite Dokon�aj, da zaprete �arovnika."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "Da bi se $(^NameDA) namestitev dokon�ala, morate ponovno zagnati ra�unalnik. �elite zdaj ponovno zagnati ra�unalnik?"
  
  !define MUI_UNTEXT_ABORTWARNING "Ste prepri�ani, da �elite zapustiti odstranitev $(^Name)?"
  
!insertmacro MUI_LANGUAGEFILE_END