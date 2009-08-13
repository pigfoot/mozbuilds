;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Estonian (1061)
;Translated by johnny izzo (izzo@hot.ee)

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Estonian"

  !define MUI_LANGNAME "Eesti keel" ;Use only ASCII characters (if this is not possible, use the English name)

  !define MUI_TEXT_WELCOME_INFO_TITLE "$(^NameDA) paigaldamine!"
  !define MUI_TEXT_WELCOME_INFO_TEXT "See abiline aitab paigaldada $(^NameDA).\r\n\r\nEnne paigaldamise alustamist on soovitatav k�ik teised programmid sulgeda, see v�imaldab teatud s�steemifaile uuendada ilma arvutit taask�ivitamata.\r\n\r\n$_CLICK"
  
  !define MUI_TEXT_LICENSE_TITLE "Litsentsileping"  
  !define MUI_TEXT_LICENSE_SUBTITLE "Enne $(^NameDA) paigaldamist vaata palun litsentsileping �le."
  !define MUI_INNERTEXT_LICENSE_TOP "Vajuta Page Down, et n�ha �lej��nud teksti."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Kui sa oled lepingu tingimustega n�us, vali j�tkamiseks N�ustun. $(^NameDA) paigaldamiseks pead sa lepinguga n�ustuma."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Kui n�ustud lepingu tingimustega, vali allolev m�rkeruut. $(^NameDA) paigaldamiseks pead lepinguga n�ustuma. $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Kui n�ustud lepingu tingimustega, m�rgi allpool esimene valik. $(^NameDA) paigaldamiseks pead lepinguga n�ustuma. $_CLICK"

  !define MUI_TEXT_COMPONENTS_TITLE "Vali komponendid"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Vali millised $(^NameDA) osad sa soovid paigaldada."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Kirjeldus"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Nihuta hiir komponendile, et n�ha selle kirjeldust."
  !else
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Vali komponent, et n�ha selle kirjeldust."
  !endif
  
  !define MUI_TEXT_DIRECTORY_TITLE "Vali asukoht"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Vali kaust kuhu paigaldada $(^NameDA)."
  
  !define MUI_TEXT_INSTALLING_TITLE "Paigaldan..."
  !define MUI_TEXT_INSTALLING_SUBTITLE "Palun oota kuni $(^NameDA) on paigaldatud."
  
  !define MUI_TEXT_FINISH_TITLE "Programm paigaldatud"
  !define MUI_TEXT_FINISH_SUBTITLE "Paigaldus edukalt sooritatud."

  !define MUI_TEXT_ABORT_TITLE "Paigaldus katkestatud"
  !define MUI_TEXT_ABORT_SUBTITLE "Paigaldamine eba�nnestus."

  !define MUI_BUTTONTEXT_FINISH "L�peta"
  !define MUI_TEXT_FINISH_INFO_TITLE "$(^NameDA) paigalduse l�pule viimine."
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) on sinu arvutisse paigaldatud.\r\n\r\nAbilise sulgemiseks vajuta L�peta."
  !define MUI_TEXT_FINISH_INFO_REBOOT "$(^NameDA) t�ielikuks paigaldamiseks tuleb arvuti taask�ivitada. Kas soovid arvuti kohe taask�ivitada ?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Taask�ivita kohe"
  !define MUI_TEXT_FINISH_REBOOTLATER "Taask�ivitan hiljem k�sitsi"
  !define MUI_TEXT_FINISH_RUN "K�ivita $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "Kuva Loemind"
  
  !define MUI_TEXT_STARTMENU_TITLE "Vali Start-men�� kaust"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Vali $(^NameDA) otseteede jaoks Start-men�� kaust."
  !define MUI_INNERTEXT_STARTMENU_TOP "Vali Start-men�� kaust, kuhu soovid paigutada programmi otseteed. V�id ka sisestada nime, et luua uus kaust."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "�ra loo otseteid"
  
  !define MUI_TEXT_ABORTWARNING "Oled sa kindel et soovid $(^Name) paigaldamise katkestada?"

  
  !define MUI_UNTEXT_WELCOME_INFO_TITLE "$(^NameDA) eemaldamine!"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "See abiline aitab eemaldada $(^NameDA).\r\n\r\nEnne eemaldamist vaata, et $(^NameDA) oleks suletud.\r\n\r\n$_CLICK"

  !define MUI_UNTEXT_CONFIRM_TITLE "Eemalda $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Eemalda $(^NameDA) oma arvutist."

  !define MUI_UNTEXT_LICENSE_TITLE "Litsentsileping"  
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Enne $(^NameDA) eemaldamist vaata palun litsentsileping �le."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Kui sa oled lepingu tingimustega n�us, vali j�tkamiseks N�ustun. $(^NameDA) eemaldamiseks pead sa lepinguga n�ustuma."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Kui n�ustud lepingu tingimustega, vali allolev m�rkeruut. $(^NameDA) eemaldamiseks pead lepinguga n�ustuma. $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Kui n�ustud lepingu tingimustega, m�rgi allpool esimene valik. $(^NameDA) eemaldamiseks pead lepinguga n�ustuma. $_CLICK"
  
  !define MUI_UNTEXT_COMPONENTS_TITLE "Vali komponendid"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Vali millised $(^NameDA) osad sa soovid eemaldada."
  
  !define MUI_UNTEXT_DIRECTORY_TITLE "Vali asukoht"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Vali kaust kust $(^NameDA) eemaldada."
  
  !define MUI_UNTEXT_UNINSTALLING_TITLE "Eemaldan..."
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Palun oota kuni $(^NameDA) on eemaldatud."
    
  !define MUI_UNTEXT_FINISH_TITLE "Eemaldamine l�petatud"
  !define MUI_UNTEXT_FINISH_SUBTITLE "Eemaldamine edukalt l�pule viidud."
  
  !define MUI_UNTEXT_ABORT_TITLE "Eemaldamine katkestatud"
  !define MUI_UNTEXT_ABORT_SUBTITLE "Eemaldamine eba�nestus."

  !define MUI_UNTEXT_FINISH_INFO_TITLE "$(^NameDA) eemaldamise l�pule viimine."
  !define MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) on sinu arvutist eemaldatud.\r\n\r\nAbilise sulgemiseks vajuta L�peta."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "$(^NameDA) t�ielikuks eemaldamiseks tuleb arvuti taask�ivitada. Kas soovid arvuti kohe taask�ivitada ?"
  
  !define MUI_UNTEXT_ABORTWARNING "Oled sa kindel et soovid $(^Name) eemaldamise katkestada?"

!insertmacro MUI_LANGUAGEFILE_END
