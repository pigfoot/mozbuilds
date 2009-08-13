;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Polish (1045)
;By Piotr Murawski & Rafa� Lampe; www.lomsel.prv.pl mailto:ppiter@skrzynka.pl
;Updated by cube, kubad(at)poczta.onet.pl and SYSTEMsoft Group, http://www.systemsoft-group.com
;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Polish"

  !define MUI_LANGNAME "Polski" ;Use only ASCII characters (if this is not possible, use the English name)
  
  !define MUI_TEXT_WELCOME_INFO_TITLE "Witamy w kreatorze instalacji programu $(^NameDA)"
  !define MUI_TEXT_WELCOME_INFO_TEXT "Ten kreator pomo�e Ci zainstalowa� program $(^NameDA).\r\n\r\nZalecane jest zamkni�cie wszystkich uruchomionych program�w przed rozpocz�ciem instalacji. To pozwoli na uaktualnienie niezb�dnych plik�w systemowych bez konieczno�ci ponownego uruchomienia komputera.\r\n\r\n$_CLICK"
    
  !define MUI_TEXT_LICENSE_TITLE "Umowa licencyjna"  
  !define MUI_TEXT_LICENSE_SUBTITLE "Przed instalacj� programu $(^NameDA) zapoznaj si� z warunkami licencji."
  !define MUI_INNERTEXT_LICENSE_TOP "Naci�nij klawisz Page Down, aby zobaczy� reszt� umowy."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Je�eli akceptujesz warunki umowy, wybierz Zgadzam si�, aby kontynuowa�. Musisz zaakceptowa� warunki umowy, aby zainstalowa� $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Je�eli akceptujesz warunki umowy, zaznacz pole wyboru poni�ej, aby kontynuowa�. Musisz zaakceptowa� warunki umowy, aby zainstalowa� $(^NameDA).  $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Je�eli akceptujesz warunki umowy, wybierz pierwsz� opcj� poni�ej, aby kontynuowa�. Musisz zaakceptowa� warunki umowy, aby zainstalowa� $(^NameDA).  $_CLICK"

  !define MUI_TEXT_COMPONENTS_TITLE "Wybierz komponenty"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Wybierz komponenty programu $(^NameDA), kt�re chcesz zainstalowa�."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Opis"
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Przesu� kursor myszy nad komponent, aby zobaczy� jego opis."
  
  !define MUI_TEXT_DIRECTORY_TITLE "Wybierz lokalizacj� dla instalacji"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Wybierz folder, w kt�rym ma by� zainstalowany $(^NameDA)."
  
  !define MUI_TEXT_INSTALLING_TITLE "Instalacja"
  !define MUI_TEXT_INSTALLING_SUBTITLE "Prosz� czeka�, podczas gdy $(^NameDA) jest instalowany."
  
  !define MUI_TEXT_FINISH_TITLE "Zako�czono"
  !define MUI_TEXT_FINISH_SUBTITLE "Instalacja zako�czona pomy�lnie."
  
  !define MUI_TEXT_ABORT_TITLE "Instalacja przerwana"
  !define MUI_TEXT_ABORT_SUBTITLE "Instalacja nie zosta�a zako�czona pomy�lnie."
   
  !define MUI_BUTTONTEXT_FINISH "&Zako�cz"
  !define MUI_TEXT_FINISH_INFO_TITLE "Ko�czenie pracy kreatora instalacji $(^NameDA)"
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) zosta� pomy�lnie zainstalowany na Twoim komputerze.\r\n\r\nKliknij Zako�cz, aby zako�czy� dzia�anie Kreatora."
  !define MUI_TEXT_FINISH_INFO_REBOOT "Tw�j komputer musi zosta� ponownie uruchomiony aby zako�czy� instalacj� programu $(^NameDA). Czy chcesz zrobi� to teraz?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Uruchom ponownie teraz"
  !define MUI_TEXT_FINISH_REBOOTLATER "Sam uruchomi� ponownie komputer p�niej"
  !define MUI_TEXT_FINISH_RUN "Uruchom program $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "Poka� plik ReadMe"
 
  !define MUI_TEXT_STARTMENU_TITLE "Wybierz folder w menu Start"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Wybierz folder menu Start w kt�rym zostan� umieszczone skr�ty do programu"
  !define MUI_INNERTEXT_STARTMENU_TOP "Wybierz folder w menu Start w kt�rym chcia�by� umie�ci� skr�ty do programu. Mo�esz tak�e utworzy� nowy folder wpisuj�c jego nazw�."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "Nie tw�rz skr�t�w"
    
  !define MUI_TEXT_ABORTWARNING "Czy na pewno chcesz zako�czy� dzia�anie instalatora $(^Name)?"

    
  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Witamy w kreatorze deinstalacji $(^NameDA)"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Kreator poprowadzi Ci� przez proces deinstalacji $(^NameDA).\r\n\r\nPrzed rozpocz�ciem deinstalacji programu, upewnij si�, czy $(^NameDA) NIE jest w�a�nie uruchomiony.\r\n\r\n$_CLICK"

  !define MUI_UNTEXT_CONFIRM_TITLE "Odinstaluj $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Usu� $(^NameDA) z twojego komputera."

  !define MUI_UNTEXT_LICENSE_TITLE "Umowa Licencyjna."
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Przed deinstalacj� programu $(^NameDA) zapoznaj si� z warunkami licencji."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Je�eli akceptujesz warunki umowy, wybierz Zgadzam si�, aby kontynuowa�. Musisz zaakceptowa� warunki umowy, aby odinstalowa� $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Je�eli akceptujesz warunki umowy, zaznacz pole wyboru poni�ej, aby kontynuowa�. Musisz zaakceptowa� warunki umowy, aby odinstalowa� $(^NameDA). $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Je�eli akceptujesz warunki umowy, wybierz pierwsz� opcj� poni�ej, aby kontynuowa�. Musisz zaakceptowa� warunki umowy, aby odinstalowa� $(^NameDA). $_CLICK"
      
  !define MUI_UNTEXT_COMPONENTS_TITLE "Wybierz komponenty"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Wybierz, kt�re elementy $(^NameDA) chcesz odinstalowa�."
  
  !define MUI_UNTEXT_DIRECTORY_TITLE "Wyb�r miejsca deinstalacji"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Wybierz folder, z kt�rego chcesz odinstalowa� $(^NameDA)."  
  
  !define MUI_UNTEXT_UNINSTALLING_TITLE "Deinstalowanie"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Prosz� czeka�, $(^NameDA) jest odinstalowywany."
  
  !define MUI_UNTEXT_FINISH_TITLE "Zako�czono odinstalowanie"
  !define MUI_UNTEXT_FINISH_SUBTITLE "Odinstalowanie zako�czone pomy�lnie."
   
  !define MUI_UNTEXT_ABORT_TITLE "Deinstalacja przerwana"
  !define MUI_UNTEXT_ABORT_SUBTITLE "Deinstalacja nie zosta�a zako�czona pomy�lnie."
  
  !define MUI_UNTEXT_FINISH_INFO_TITLE "Ko�czenie pracy kreatora deinstalacyjnego $(^NameDA)"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) zosta� odinstalowany z Twojego komputera.\r\n\r\nKliknij Zako�cz, aby zako�czy� dzia�anie Kreatora."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "Tw�j komputer musi zosta� ponownie uruchomiony w celu zako�czenia deinstalacji programu $(^NameDA). Czy chcesz zrobi� to teraz?"
  
  !define MUI_UNTEXT_ABORTWARNING "Czy na pewno chcesz przerwa� proces deinstalacji $(^Name)?"
     
!insertmacro MUI_LANGUAGEFILE_END