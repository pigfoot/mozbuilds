;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Danish (1030)
;By Claus Futtrup

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Danish"

  !define MUI_LANGNAME "Dansk" ;Use only ASCII characters (if this is not possible, use the English name)

  !define MUI_TEXT_WELCOME_INFO_TITLE "Velkommen til setup-guiden for $(^NameDA)"
  !define MUI_TEXT_WELCOME_INFO_TEXT "Denne guide vil installere $(^NameDA) p� din computer.\r\n\r\nDet anbefales at du lukker alle k�rende programmer inden start af setup-guiden. Dette vil tillade guiden at opdatere de n�dvendige systemfiler uden at skulle genstarte computeren.\r\n\r\n$_CLICK"
  
  !define MUI_TEXT_LICENSE_TITLE "Licens Aftale"
  !define MUI_TEXT_LICENSE_SUBTITLE "L�s venligst licens aftalen f�r du installerer $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_TOP "Tryk Page Down for at se resten af aftalen."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Hvis du accepterer alle vilk�rene i aftalen, tryk 'Jeg accepterer' for at fors�tte. Du skal acceptere vilk�rene for at installere $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Hvis du accepterer alle vilk�rene i aftalen, afm�rk check-boxen nedenfor. Du skal acceptere vilk�rene for at installere $(^NameDA). $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Hvis du accepterer alle vilk�rene i aftalen, v�lg den f�rste option nedenfor. Du skal acceptere vilk�rene for at installere $(^NameDA). $_CLICK"

  !define MUI_TEXT_COMPONENTS_TITLE "V�lg komponenter"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "V�lg hvilke features af $(^NameDA) du vil installere."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Beskrivelse"
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Placer musemark�ren over en komponent for at se beskrivelsen af komponenten."
  
  !define MUI_TEXT_DIRECTORY_TITLE "V�lg installationsmappe"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "V�lg hvilken mappe du vil installere $(^NameDA) i."
  
  !define MUI_TEXT_INSTALLING_TITLE "Installerer"
  !define MUI_TEXT_INSTALLING_SUBTITLE "Vent venligst mens $(^NameDA) bliver installeret."
  
  !define MUI_TEXT_FINISH_TITLE "Installation gennemf�rt"
  !define MUI_TEXT_FINISH_SUBTITLE "Setup-guiden blev gennemf�rt med succes."

  !define MUI_TEXT_ABORT_TITLE "Installation afbrudt"
  !define MUI_TEXT_ABORT_SUBTITLE "Setup-guiden blev ikke gennemf�rt."

  !define MUI_BUTTONTEXT_FINISH "&Afslut"
  !define MUI_TEXT_FINISH_INFO_TITLE "Afslutter $(^NameDA) setup-guiden"
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) er blevet installeret p� din computer.\r\n\r\nTryk 'Afslut' for at lukke setup-guiden."
  !define MUI_TEXT_FINISH_INFO_REBOOT "Dit system skal genstartes f�r installeringen af $(^NameDA) er afsluttet. Vil du genstarte nu?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Genstart nu"
  !define MUI_TEXT_FINISH_REBOOTLATER "Jeg genstarter selv p� et andet tidspunkt"
  !define MUI_TEXT_FINISH_RUN "&K�r $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "&Vis Readme"
  
  !define MUI_TEXT_STARTMENU_TITLE "V�lg Start Menu mappe"
  !define MUI_TEXT_STARTMENU_SUBTITLE "V�lg en Start Menu mappe til programmets genveje."
  !define MUI_INNERTEXT_STARTMENU_TOP "V�lg Start Menu mappe hvor du vil lave programmets genveje. Du kan ogs� skrive et navn for at oprette en ny mappe."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "Opret ikke genveje"
  
  !define MUI_TEXT_ABORTWARNING "Er du sikker p� at du vil afslutte $(^Name) installationen?"


  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Velkommen til $(^NameDA) afinstallations-guiden"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Denne afinstallations-guide vil hj�lpe dig gennem afinstallationen af $(^NameDA).\r\n\r\nF�r start af afinstallationen, v�r sikker p� at $(^NameDA) ikke k�rer.\r\n\r\n$_CLICK"
  
  !define MUI_UNTEXT_CONFIRM_TITLE "Afinstaller $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Slet $(^NameDA) fra dit system."

  !define MUI_UNTEXT_LICENSE_TITLE "Licens aftale"
  !define MUI_UNTEXT_LICENSE_SUBTITLE "L�s venligst licens vilk�rene f�r afinstalleringen af $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Hvis du accepterer vilk�rene for aftalen, tryk 'Jeg accepterer' for at forts�tte. Du skal acceptere aftalen for at afinstallere $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Hvis du accepterer vilk�rene for aftalen, tryk check-boxen nedenfor. Du skal acceptere aftalen for at afinstallere $(^NameDA). $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Hvis du accepterer vilk�rene for aftalen, v�lge den f�rste option nedenfor. Du skal acceptere aftalen for at afinstallere $(^NameDA). $_CLICK"
  
  !define MUI_UNTEXT_COMPONENTS_TITLE "V�lg komponenter"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "V�lg hvilke features af $(^NameDA) du vil afinstallere."

  !define MUI_UNTEXT_DIRECTORY_TITLE "V�lg afinstallationsmappe"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "V�lg den mappe hvorfra du vil afinstallere $(^NameDA)."
  
  !define MUI_UNTEXT_UNINSTALLING_TITLE "Afinstallerer"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Vent venligst mens $(^NameDA) bliver afinstalleret."
    
  !define MUI_UNTEXT_FINISH_TITLE "Afinstallationen er f�rdig"
  !define MUI_UNTEXT_FINISH_SUBTITLE "Afinstalleringen blev afsluttet med succes."

  !define MUI_UNTEXT_ABORT_TITLE "Afinstallationen er blevet afbrudt"
  !define MUI_UNTEXT_ABORT_SUBTITLE "Afinstallationen blev ikke genmmenf�rt."
  
  !define MUI_UNTEXT_FINISH_INFO_TITLE "Afslutter $(^NameDA) afinstallations-guiden"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) er blevet afinstalleret fra din computer.\r\n\r\nTryk 'Afslut' for at lukke denne guide."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "Din computer skal genstartes for at gennemf�re afinstallationen af $(^NameDA). Vil du genstarte nu?"
  
  !define MUI_UNTEXT_ABORTWARNING "Er du sikker p� at du vil afbryde $(^Name) afinstallationen?"

!insertmacro MUI_LANGUAGEFILE_END