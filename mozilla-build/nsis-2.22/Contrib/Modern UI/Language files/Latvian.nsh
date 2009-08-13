;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Latvie�u [Latvian] - (1062)
;By Valdis Gri�is
;Corrections by Kristaps Me��elis / x-f (x-f 'AT' inbox.lv)

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Latvian"

  !define MUI_LANGNAME "Latvie�u" ;Use only ASCII characters (if this is not possible, use the English name)
  
  !define MUI_TEXT_WELCOME_INFO_TITLE "Esiet sveicin�ti '$(^NameDA)' uzst�d��anas vedn�"
  !define MUI_TEXT_WELCOME_INFO_TEXT "�is uzst�d��anas vednis jums pal�dz�s veikt '$(^NameDA)' uzst�d��anu.\r\n\r\n�oti ieteicams aizv�rt citas programmas pirms ��s programmas uzst�d��anas veik�anas. Tas �aus atjaunot svar�gus sist�mas failus bez datora p�rstart��anas.\r\n\r\n$_CLICK"
  
  !define MUI_TEXT_LICENSE_TITLE "Licences l�gums"
  !define MUI_TEXT_LICENSE_SUBTITLE "L�dzu izlasiet licences l�gumu pirms '$(^NameDA)' uzst�d��anas."
  !define MUI_INNERTEXT_LICENSE_TOP "Spiediet 'Page Down', lai apl�kotu visu l�gumu."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Ja piekr�tat licences l�guma noteikumiem, spiediet 'Piekr�tu', lai turpin�tu uzst�d��anu. Jums ir j�piekr�t licences noteikumiem, lai uzst�d�tu '$(^NameDA)'."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ja piekr�tat licences l�guma noteikumiem, tad atz�m�jiet izv�les r�ti�u. Jums ir j�piekr�t licences noteikumiem, lai uzst�d�tu '$(^NameDA)'. $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ja piekr�tat licences l�guma noteikumiem, tad izv�lieties pirmo zem�keso�o opciju. Jums ir j�piekr�t licences noteikumiem, lai uzst�d�tu '$(^NameDA)'. $_CLICK"
  
  !define MUI_TEXT_COMPONENTS_TITLE "Izv�lieties komponentus"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Izv�lieties nepiecie�am�s '$(^NameDA)' sast�vda�as, kuras uzst�d�t."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Apraksts"
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Novietojiet peles kursoru uz komponenta, lai tiktu par�d�ts t� apraksts."
  
  !define MUI_TEXT_DIRECTORY_TITLE "Izv�lieties uzst�d��anas mapi"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Izv�lieties mapi, kur� uzst�d�t '$(^NameDA)'."
  
  !define MUI_TEXT_INSTALLING_TITLE "Notiek uzst�d��ana"
  !define MUI_TEXT_INSTALLING_SUBTITLE "L�dzu uzgaidiet, kam�r notiek '$(^NameDA)' uzst�d��ana."
  
  !define MUI_TEXT_FINISH_TITLE "Uzst�d��ana pabeigta"
  !define MUI_TEXT_FINISH_SUBTITLE "Uzst�d��ana norit�ja veiksm�gi."
  
  !define MUI_TEXT_ABORT_TITLE "Uzst�d��ana atcelta"
  !define MUI_TEXT_ABORT_SUBTITLE "Uzst�d��ana nenorit�ja veiksm�gi."
  
  !define MUI_BUTTONTEXT_FINISH "&Pabeigt"
  !define MUI_TEXT_FINISH_INFO_TITLE "Tiek pabeigta '$(^NameDA)' uzst�d��ana"
  !define MUI_TEXT_FINISH_INFO_TEXT "'$(^NameDA)' tika veiksm�gi uzst�d�ta j�su dator�.\r\n\r\nNospiediet 'Pabeigt', lai aizv�rtu vedni."
  !define MUI_TEXT_FINISH_INFO_REBOOT "J�su datoru ir nepiecie�ams p�rstart�t, lai pabeigtu '$(^NameDA)' uzst�d��anu. Vai v�laties p�rstart�t datoru t�l�t?"
  !define MUI_TEXT_FINISH_REBOOTNOW "P�rstart�t t�l�t"
  !define MUI_TEXT_FINISH_REBOOTLATER "Es v�los p�rstart�t pats v�l�k"
  !define MUI_TEXT_FINISH_RUN "P&alaist '$(^NameDA)'"
  !define MUI_TEXT_FINISH_SHOWREADME "Pa&r�d�t LasiMani failu"
  
  !define MUI_TEXT_STARTMENU_TITLE "Izv�lieties 'Start Menu' folderi"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Izv�lieties 'Start Menu' mapi '$(^NameDA)' sa�sn�m."
  !define MUI_INNERTEXT_STARTMENU_TOP "Izv�lieties 'Start Menu' mapi, kur� tiks izveidotas programmas sa�snes. Varat ar� pats izveidot jaunu mapi."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "Neveidot sa�snes"
  
  !define MUI_TEXT_ABORTWARNING "Vai tie��m v�laties p�rtraukt '$(^Name)' uzst�d��anu?"
  
  
  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Esiet sveicin�ti '$(^NameDA)' atinstal��anas vedn�"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "�is vednis jums pal�dz�s veikt '$(^NameDA)' atinstal��anu.\r\n\r\nPirms s�kt atinstal��anas procesu, p�rliecinieties, vai '$(^NameDA)' pa�laik nedarbojas.\r\n\r\n$_CLICK"
  
  !define MUI_UNTEXT_CONFIRM_TITLE "'$(^NameDA)' atinstal��ana"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Dz�st '$(^NameDA)' no j�su datora."
  
  !define MUI_UNTEXT_LICENSE_TITLE "Licences l�gums"  
  !define MUI_UNTEXT_LICENSE_SUBTITLE "L�dzu izlasiet licences l�gumu pirms '$(^NameDA)' atinstal��anas."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Ja piekr�tat licences noteikumiem, spiediet 'Piekr�tu', lai turpin�tu. Jums ir j�piekr�t licences noteikumiem, lai atinstal�tu '$(^NameDA)'."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ja piekr�tat licences l�guma noteikumiem, tad iez�m�jiet izv�les r�ti�u. Jums ir j�piekr�t licences noteikumiem, lai atinstal�tu '$(^NameDA)'. $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ja piekr�tat licences l�guma noteikumiem, tad izv�lieties pirmo zem�keso�o opciju. Jums ir j�piekr�t licences noteikumiem, lai atinstal�tu '$(^NameDA)'. $_CLICK"
  
  !define MUI_UNTEXT_COMPONENTS_TITLE "Izv�lieties komponentus"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Izv�lieties nepiecie�am�s '$(^NameDA)' sast�vda�as, kuras atinstal�t."
  
  !define MUI_UNTEXT_DIRECTORY_TITLE "Izv�lieties atinstal��anas mapi"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Izv�lieties mapi, no kuras notiks '$(^NameDA)' atinstal��ana."
  
  !define MUI_UNTEXT_UNINSTALLING_TITLE "Notiek atinstal��ana"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "L�dzu uzgaidiet, kam�r '$(^NameDA)' tiek atinstal�ta."
    
  !define MUI_UNTEXT_FINISH_TITLE "Atinstal��ana pabeigta"
  !define MUI_UNTEXT_FINISH_SUBTITLE "Atinstal��ana norit�ja veiksm�gi."
  
  !define MUI_UNTEXT_ABORT_TITLE "Atinstal��ana atcelta"
  !define MUI_UNTEXT_ABORT_SUBTITLE "Atinstal��ana nenorit�ja veiksm�gi."
  
  !define MUI_UNTEXT_FINISH_INFO_TITLE "Tiek pabeigta '$(^NameDA)' atinstal�cija"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "'$(^NameDA)' tika veiksm�gi izdz�sta no j�su datora.\r\n\r\nNospiediet 'Pabeigt', lai aizv�rtu vedni."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "J�su datoru nepiecie�ams p�rstart�t, lai pabeigtu '$(^NameDA)' atinstal��anu. Vai v�laties p�rstart�t datoru t�l�t?"
  
  !define MUI_UNTEXT_ABORTWARNING "Vai tie��m v�laties p�rtraukt '$(^Name)' atinstal��anu?"
  
!insertmacro MUI_LANGUAGEFILE_END