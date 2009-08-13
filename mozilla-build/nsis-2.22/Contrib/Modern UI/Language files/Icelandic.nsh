;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Icelandic (15)
;By Gretar Orri Kristinsson

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Icelandic"

  !define MUI_LANGNAME "Icelandic" ;Use only ASCII characters (if this is not possible, use the English name)
  
  !define MUI_TEXT_WELCOME_INFO_TITLE "Velkominn til $(^NameDA) uppsetningarhj�lparinnar"
  !define MUI_TEXT_WELCOME_INFO_TEXT "�essi hj�lp mun lei�a �ig � gegnum uppsetninguna � $(^NameDA).\r\n\r\nM�lt er me� �v� a� �� lokir �llum ��rum forritum ��ur en uppsetningin hefst. �etta mun gera uppsetningarforritinu kleyft a� uppf�ra kerfiskr�r �n �ess a� endurr�sa t�lvuna.\r\n\r\n$_CLICK"
  
  !define MUI_TEXT_LICENSE_TITLE "Notandaleyfissamningur"  
  !define MUI_TEXT_LICENSE_SUBTITLE "Vinsamlegast sko�a�u Notandaleyfissamninginn vel ��ur en uppsetning � $(^NameDA) hefst."
  !define MUI_INNERTEXT_LICENSE_TOP "Smelltu � 'PageDown' takkann � lyklabor�inu til a� sj� afganginn af samningnum."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Ef �� sam�ykkir skilm�la samningsins, smelltu �� � '�g sam�ykki' til a� halda �fram. �� ver�ur a� sam�ykkja samninginn til �ess a� setja upp $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ef �� sam�ykkir skilm�la samningsins, haka�u �� � kassann h�r a� ne�an. �� ver�ur a� sam�ykkja samninginn til �ess a� setja upp $(^NameDA). $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ef �� sam�ykkir skilm�la samningsins, veldu �� fyrsta valm�guleikann h�r a� ne�an. �� ver�ur a� sam�ykkja samninginn til �ess a� setja upp $(^NameDA). $_CLICK"
  
  !define MUI_TEXT_COMPONENTS_TITLE "Velja �hluti"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Veldu hva�a $(^NameDA) �hluti �� vilt setja upp."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "L�sing"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "F�r�u m�sina yfir �hlut til a� f� l�singuna � honum."
  !else
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Veldu �hlut til �ess a� f� l�singuna � honum."
  !endif
  
  !define MUI_TEXT_DIRECTORY_TITLE "Veldu uppsetningarsk�arsafn"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Veldu �a� skr�arsafn sem �� vilt setja $(^NameDA) upp �."
  
  !define MUI_TEXT_INSTALLING_TITLE "Set upp"
  !define MUI_TEXT_INSTALLING_SUBTITLE "Vinsamlegast doka�u vi� me�an $(^NameDA) er sett upp."
  
  !define MUI_TEXT_FINISH_TITLE "Uppsetningu loki�"
  !define MUI_TEXT_FINISH_SUBTITLE "Uppsetning t�kst."
  
  !define MUI_TEXT_ABORT_TITLE "H�tt vi� uppsetningu"
  !define MUI_TEXT_ABORT_SUBTITLE "Uppsetningu lauk ekki sem skildi."
  
  !define MUI_BUTTONTEXT_FINISH "&Lj�ka"
  !define MUI_TEXT_FINISH_INFO_TITLE "Lj�ka $(^NameDA) uppsetningarhj�lpinni"
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) er n� upp sett � t�lvunni �inni.\r\n\r\nSmelltu � 'Lj�ka' til a� loka �essari hj�lp."
  !define MUI_TEXT_FINISH_INFO_REBOOT "Til a� lj�ka uppsetningunni � $(^NameDA) ver�ur a� endurr�sa t�lvuna. Viltu endurr�sa n�na?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Endurr�sa n�na"
  !define MUI_TEXT_FINISH_REBOOTLATER "�g vil endurr�sa seinna"
  !define MUI_TEXT_FINISH_RUN "&Keyra $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "&Sko�a LestuMig"
  
  !define MUI_TEXT_STARTMENU_TITLE "Velja skr�arsafn 'Start' valmyndar"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Veldu skr�arsafn $(^NameDA) fl�tilei�a fyrir 'Start' valmyndina."
  !define MUI_INNERTEXT_STARTMENU_TOP "Veldu skr�arsafn fl�tilei�a forritsins fyrir 'Start' valmyndina. �� getur einnig b�i� til n�tt skr�arsafn me� �v� a� setja inn n�tt nafn."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "Ekki b�a til fl�tilei�ir � 'Start' valmyndinni"
  
  !define MUI_TEXT_ABORTWARNING "Ertu viss um a� �� viljir loka $(^Name) uppsetningarhj�lpinni?"
  
  
  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Velkomin(n) til $(^NameDA) fjarl�gingarhj�lparinnar"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "�essi hj�lp mun lei�a �ig � gegnum fjarl�ginguna � $(^NameDA).\r\n\r\n��ur en fjarl�ging hefst skal ganga �r skugga um a� $(^NameDA) s� ekki opi�.\r\n\r\n$_CLICK"
  
  !define MUI_UNTEXT_CONFIRM_TITLE "Fjarl�gja $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Fjarl�gja $(^NameDA) �r t�lvunni."
  
  !define MUI_UNTEXT_LICENSE_TITLE "Leyfissamningur"  
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Vinsamlegast sko�a�u leyfissamninginn vel ��ur en fjarl�ging � $(^NameDA) hefst."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Ef �� sam�ykkir skilm�la samningsins, smelltu �� � '�g sam�ykki' til a� halda �fram. �� ver�ur a� sam�ykkja samninginn til �ess a� fjarl�gja $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ef �� sam�ykkir skilm�la samningsins, haka�u �� � kassann h�r a� ne�an. �� ver�ur a� sam�ykkja samninginn til �ess a� fjarl�gja $(^NameDA). $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ef �� sam�ykkir skilm�la samningsins, veldu �� fyrsta valm�guleikann h�r a� ne�an. �� ver�ur a� sam�ykkja samninginn til �ess a� fjarl�gja $(^NameDA). $_CLICK"
  
  !define MUI_UNTEXT_COMPONENTS_TITLE "Velja �hluti"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Velja hva�a $(^NameDA) �hluti �� vilt fjarl�gja."
  
  !define MUI_UNTEXT_DIRECTORY_TITLE "Velja fjarl�gingarsk�arsafn"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Veldu �a� skr�arsafn sem �� vilt fjarl�gja $(^NameDA) �r."
  
  !define MUI_UNTEXT_UNINSTALLING_TITLE "Fjarl�gi"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Vinsamlegast doka�u vi� � me�an $(^NameDA) er fjarl�gt."
    
  !define MUI_UNTEXT_FINISH_TITLE "Fjarl�gingu loki�"
  !define MUI_UNTEXT_FINISH_SUBTITLE "Fjarl�ging t�kst."
  
  !define MUI_UNTEXT_ABORT_TITLE "H�tt vi� fjarl�gingu"
  !define MUI_UNTEXT_ABORT_SUBTITLE "Fjarl�gingu lauk ekki sem skildi."
  
  !define MUI_UNTEXT_FINISH_INFO_TITLE "Lj�ka $(^NameDA) fjarl�gingarhj�lpinni"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) hefur n� veri� fjarl�gt �r t�lvunni.\r\n\r\nSmelltu � 'Lj�ka' til a� loka �essari hj�lp."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "Til a� lj�ka fjarl�gingunni � $(^NameDA) ver�ur a� endurr�sa t�lvuna. Viltu endurr�sa n�na?"
  
  !define MUI_UNTEXT_ABORTWARNING "Ertu viss um a� �� viljir loka $(^Name) fjarl�gingarhj�lpinni?"
  
!insertmacro MUI_LANGUAGEFILE_END