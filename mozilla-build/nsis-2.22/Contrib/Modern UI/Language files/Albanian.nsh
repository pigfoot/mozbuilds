;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Albanian (1052)
;Translation Besnik Bleta, besnik@spymac.com

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Albanian"

  !define MUI_LANGNAME "Albanian" ;Use only ASCII characters (if this is not possible, use the English name)
  
  !define MUI_TEXT_WELCOME_INFO_TITLE "Mir�sevini te Rregullimi i $(^NameDA)"
  !define MUI_TEXT_WELCOME_INFO_TEXT "Ky do t'ju udh�heq� gjat� instalimit t� $(^NameDA).\r\n\r\nK�shillohet q� t� mbyllni t�r� zbatimet e tjer� para se t� nisni Rregullimin. Kjo b�n t� mundur p�rdit�sim kartelash t� r�nd�sishme sistemi pa u dashur t� riniset kompjuteri juaj.\r\n\r\n$_CLICK"
  
  !define MUI_TEXT_LICENSE_TITLE "Marr�veshje License"  
  !define MUI_TEXT_LICENSE_SUBTITLE "Ju lutem shqyrtoni kushtet e licens�s p�rpara instalimit t� $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_TOP "Shtypni Page Down p�r t� par� pjes�n e mbetur t� marr�veshjes."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "N�se pranoni kushtet e marr�veshjes, klikoni Pajtohem p�r t� vazhduar. Duhet t� pranoni marr�veshjen p�r t� instaluar $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "N�se pranoni kushtet e marr�veshjes, klikoni kutiz�n m� posht�. Duhet t� pranoni marr�veshjen p�r t� instaluar $(^NameDA). $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "N�se pranoni kushtet e marr�veshjes, p�rzgjidhni m� posht� mund�sin� e par�. Duhet t� pranoni marr�veshjen p�r t� instaluar $(^NameDA). $_CLICK"
  
  !define MUI_TEXT_COMPONENTS_TITLE "P�rzgjidhni P�rb�r�s"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Zgjidhni cilat an� t� $(^NameDA) doni t� instalohen."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "P�rshkrim"
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "P�r t� par� p�rshkrimin e nj� p�rb�r�si vendosni miun p�rsip�r tij."
  
  !define MUI_TEXT_DIRECTORY_TITLE "Zgjidhni Vend Instalimi"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Zgjidhni dosjen tek e cila t� instalohet $(^NameDA)."
  
  !define MUI_TEXT_INSTALLING_TITLE "Po instaloj"
  !define MUI_TEXT_INSTALLING_SUBTITLE "Ju lutem prisni nd�rkoh� q� $(^NameDA) instalohet."
  
  !define MUI_TEXT_FINISH_TITLE "Instalim i Plot�suar"
  !define MUI_TEXT_FINISH_SUBTITLE "Rregullimi u plot�sua me sukses."
  
  !define MUI_TEXT_ABORT_TITLE "Instalimi u Nd�rpre"
  !define MUI_TEXT_ABORT_SUBTITLE "Rregullimi nuk u plot�sua me sukses."
  
  !define MUI_BUTTONTEXT_FINISH "&P�rfundo"
  !define MUI_TEXT_FINISH_INFO_TITLE "Po plot�soj Rregullimin e $(^NameDA)"
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) u instalua n� kompjuterin tuaj.\r\n\r\nKlikoni P�rfundo p�r t� mbyllur k�t� proces."
  !define MUI_TEXT_FINISH_INFO_REBOOT "Q� t� mund t� plot�sohet instalimi i $(^NameDA) kompjuteri juaj duhet t� riniset. Doni ta rinisni tani?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Rinise tani"
  !define MUI_TEXT_FINISH_REBOOTLATER "Dua ta rinis dorazi m� von�"
  !define MUI_TEXT_FINISH_RUN "&Nis $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "&Shfaq Readme"
  
  !define MUI_TEXT_STARTMENU_TITLE "Zgjidhni Dosje Menuje Start"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Zgjidhni nj� dosje Menuje Start p�r shkurtprerje $(^NameDA)."
  !define MUI_INNERTEXT_STARTMENU_TOP "P�rzgjidhni dosjen Menu Start n� t� cil�n do t� donit t� krijonit shkurtprerjet p�r programin. Mundeni edhe t� jepni nj� em�r p�r t� krijuar nj� dosje t� re."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "Mos krijo shkurtprerje"
  
  !define MUI_TEXT_ABORTWARNING "Jeni i sigurt� q� doni t� lini Rregullimin e $(^Name)?"
  
  
  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Mir�sevini te �instalimi i $(^NameDA)"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Ky do t'ju udh�heq� gjat� �instalimit t� $(^NameDA).\r\n\r\nPara nisjes s� �instalimit, sigurohuni q� $(^NameDA) nuk �sht� duke xhiruar.\r\n\r\n$_CLICK"
  
  !define MUI_UNTEXT_CONFIRM_TITLE "�instalo $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Hiqni $(^NameDA) prej kompjuterit tuaj."
  
  !define MUI_UNTEXT_LICENSE_TITLE "Marr�veshje License"  
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Ju lutem shqyrtoni kushtet e licens�s p�rpara �instalimit t� $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "N�se pranoni kushtet e marr�veshjes, klikoni Pajtohem p�r t� vazhduar. Duhet t� pranoni marr�veshjen p�r t� �instaluar $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "N�se pranoni kushtet e marr�veshjes, klikoni kutiz�n m� posht�. Duhet t� pranoni marr�veshjen p�r t� �instaluar $(^NameDA). $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "N�se pranoni kushtet e marr�veshjes, p�rzgjidhni mund�sin� e par� m� posht�. Duhet t� pranoni marr�veshjen p�r t� �instaluar $(^NameDA). $_CLICK"
  
  !define MUI_UNTEXT_COMPONENTS_TITLE "Zgjidhni P�rb�r�sa"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Zgjidhni cilat an� t� $(^NameDA) doni t� �instalohen."
  
  !define MUI_UNTEXT_DIRECTORY_TITLE "Zgjidhni Vend �instalimi"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Zgjidhni dosjen prej s� cil�s t� instalohet $(^NameDA)."
  
  !define MUI_UNTEXT_UNINSTALLING_TITLE "�instalim"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Ju lutem prisni nd�rsa $(^NameDA) �instalohet."
    
  !define MUI_UNTEXT_FINISH_TITLE "�instalim i Plot�"
  !define MUI_UNTEXT_FINISH_SUBTITLE "�instalimi u plot�sua me sukses."
  
  !define MUI_UNTEXT_ABORT_TITLE "�instalimi u Nd�rpre"
  !define MUI_UNTEXT_ABORT_SUBTITLE "�instalimi nuk plot�sua me sukses."
  
  !define MUI_UNTEXT_FINISH_INFO_TITLE "Po plot�soj �instalimin e $(^NameDA)"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) u �instalua prej kompjuterit tuaj.\r\n\r\nKlikoni P�rfundo p�r t� mbyllur procesin."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "Kompjuteri juaj duhet t� riniset q� t� mund t� plot�sohet �instalimi i $(^NameDA). Doni ta rinisni tani?"
  
  !define MUI_UNTEXT_ABORTWARNING "Jeni i sigurt� q� doni t� lini �instalimin e $(^Name)?"
  
!insertmacro MUI_LANGUAGEFILE_END
