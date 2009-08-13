;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Slovak (1051)
;By Kypec (peter.dzugas@mahe.sk)

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Slovak"

  !define MUI_LANGNAME "Slovensky" ;Use only ASCII characters (if this is not possible, use the English name)

  !define MUI_TEXT_WELCOME_INFO_TITLE "Vitajte v sprievodcovi in�tal�cie $(^NameDA)"
  !define MUI_TEXT_WELCOME_INFO_TEXT "Tento sprievodca V�s prevedie in�tal�ciou $(^NameDA).\r\n\r\nPred za�iatkom in�tal�cie je odpor��an� zavrie� v�etky ostatn� aplik�cie. T�mto umo�n�te aktualizovanie pr�padn�ch syst�mov�ch s�borov bez potreby re�tartova� V� po��ta�.\r\n\r\n$_CLICK"
  
  !define MUI_TEXT_LICENSE_TITLE "Licen�n� zmluva"
  !define MUI_TEXT_LICENSE_SUBTITLE "Pred in�tal�ciou $(^NameDA) si pros�m pre�tudujte licen�n� podmienky."
  !define MUI_INNERTEXT_LICENSE_TOP "Stla�en�m kl�vesy Page Down posuniete text licen�nej zmluvy."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Ak s�hlas�te s podmienkami zmluvy, zvo�te S�hlas�m pre pokra�ovanie. Je nutn� s�hlasi� s licen�nou zmluvou, ak chcete pokra�ova� v in�tal�cii $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ak s�hlas�te s podmienkami zmluvy, za�krtnite ni��ie uveden� pol��ko. Je nutn� s�hlasi� s licen�nou zmluvou, ak chcete pokra�ova� v in�tal�cii $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ak s�hlas�te s podmienkami zmluvy, ozna�te prv� z ni��ie uveden�ch mo�nost�. Je nutn� s�hlasi� s licen�nou zmluvou, ak chcete pokra�ova� v in�tal�cii $(^NameDA)."
  
  !define MUI_TEXT_COMPONENTS_TITLE "Vo�ba komponentov"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Zvo�te komponenty $(^NameDA), ktor� chcete nain�talova�."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Popis"
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Pri pohybe my�ou nad komponentom sa tu zobraz� jeho popis."
  
  !define MUI_TEXT_DIRECTORY_TITLE "Vo�ba umiestnenia in�tal�cie"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Zvo�te adres�r, do ktor�ho chcete nain�talova� $(^NameDA)."
  
  !define MUI_TEXT_INSTALLING_TITLE "In�tal�cia"
  !define MUI_TEXT_INSTALLING_SUBTITLE "�akajte pros�m k�m prebieha in�tal�cia $(^NameDA)."
  
  !define MUI_TEXT_FINISH_TITLE "Dokon�enie in�tal�cie"
  !define MUI_TEXT_FINISH_SUBTITLE "In�tal�cia bola �spe�ne dokon�en�."

  !define MUI_TEXT_ABORT_TITLE "In�tal�cia bola preru�en�"
  !define MUI_TEXT_ABORT_SUBTITLE "In�tal�cia nebola �spe�ne dokon�en�."

  !define MUI_BUTTONTEXT_FINISH "&Dokon�i�"
  !define MUI_TEXT_FINISH_INFO_TITLE "Dokon�enie sprievodcu in�tal�cie $(^NameDA)"
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) bol nain�talovan� na V� po��ta�.\r\nKliknite na Dokon�i� pre uzavretie tohto sprievodcu."
  !define MUI_TEXT_FINISH_INFO_REBOOT "Pre �pln� dokon�enie in�tal�cie $(^NameDA) je nutn� vykona� re�tart V�ho po��ta�a. Chcete re�tartova� ihne�?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Re�tartova� ihne�"
  !define MUI_TEXT_FINISH_REBOOTLATER "Chcem re�tartova� ru�ne nesk�r"
  !define MUI_TEXT_FINISH_RUN "&Spusti $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "&Uk� ��taj-ma"
  
  !define MUI_TEXT_STARTMENU_TITLE "Vo�ba umiestnenia v ponuke �tart"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Zvo�te polo�ku v ponuke �tart pre umiestnenie z�stupcov $(^NameDA)."
  !define MUI_INNERTEXT_STARTMENU_TOP "Vyberte polo�ku v ponuke �tart, v ktorej chcete vytvori� z�stupcov programu. Takisto m��te nap�sa� n�zov pre vytvorenie novej polo�ky."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "Nevytv�ra� z�stupcov"
  
  !define MUI_TEXT_ABORTWARNING "Naozaj chcete ukon�i� in�tal�ciu $(^Name)?"  
  
  
  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Vitajte v sprievodcovi odin�tal�cie $(^NameDA)"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Tento sprievodca V�s prevedie odin�tal�ciou $(^NameDA).\r\n\r\nPred za�iatkom odin�tal�cie sa uistite, �e $(^NameDA) nie je pr�ve teraz spusten�.\r\n\r\n$_CLICK"

  !define MUI_UNTEXT_CONFIRM_TITLE "Odin�talovanie $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Odstr�nenie $(^NameDA) z V�ho po��ta�a."
  
  !define MUI_UNTEXT_LICENSE_TITLE "Licen�n� zmluva"  
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Pred odin�talovan�m programu $(^NameDA) si pros�m pre�tudujte licen�n� podmienky."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Ak s�hlas�te s podmienkami zmluvy, zvo�te S�hlas�m pre pokra�ovanie. Je nutn� s�hlasi� s licen�nou zmluvou, ak chcete pokra�ova� v odin�talovan� $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ak s�hlas�te s podmienkami zmluvy, za�krtnite ni��ie uveden� pol��ko. Je nutn� s�hlasi� s licen�nou zmluvou, ak chcete pokra�ova� v odin�talovan� $(^NameDA). $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ak s�hlas�te s podmienkami zmluvy, ozna�te prv� z ni��ie uveden�ch mo�nost�. Je nutn� s�hlasi� s licen�nou zmluvou, ak chcete pokra�ova� v odin�talovan� $(^NameDA). $_CLICK"

  !define MUI_UNTEXT_COMPONENTS_TITLE "Vo�ba komponentov"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Zvo�te komponenty $(^NameDA), ktor� chcete odin�talova�."
  
  !define MUI_UNTEXT_DIRECTORY_TITLE "Vo�ba umiestnenia odin�tal�cie"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Zvo�te adres�r, z ktor�ho chcete odin�talova� $(^NameDA)."
  
  !define MUI_UNTEXT_UNINSTALLING_TITLE "Odin�talovanie"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "�akajte pros�m k�m prebieha odin�talovanie $(^NameDA)."
    
  !define MUI_UNTEXT_FINISH_TITLE "Dokon�enie odin�tal�cie"
  !define MUI_UNTEXT_FINISH_SUBTITLE "Odin�talovanie bolo �spe�ne dokon�en�."
  
  !define MUI_UNTEXT_ABORT_TITLE "Odin�tal�cia bola preru�en�"
  !define MUI_UNTEXT_ABORT_SUBTITLE "Odin�talovanie nebolo �spe�ne dokon�en�."
  
  !define MUI_UNTEXT_FINISH_INFO_TITLE "Dokon�enie sprievodcu odin�tal�cie $(^NameDA)"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) bol odin�talovan� z V�ho po��ta�a.\r\n\r\nKliknite na Dokon�i� pre uzavretie tohto sprievodcu."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "Pre �pln� dokon�enie odin�tal�cie $(^NameDA) je nutn� vykona� re�tart V�ho po��ta�a. Chcete re�tartova� ihne�?"
  
  !define MUI_UNTEXT_ABORTWARNING "Naozaj chcete ukon�i� odin�tal�ciu $(^Name)?"  
  
!insertmacro MUI_LANGUAGEFILE_END