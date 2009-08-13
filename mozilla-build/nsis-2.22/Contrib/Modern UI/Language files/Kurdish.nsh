;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Kurdish
;By R�zan Tovj�n
;Updated by Erdal Ronah� (erdal.ronahi@gmail.com)

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Kurdish"

  !define MUI_LANGNAME "Kurd�" ;Use only ASCII characters (if this is not possible, use the English name)
  
  !define MUI_TEXT_WELCOME_INFO_TITLE "$(^NameDA) Tu bi x�r hat� s�rbaziya sazkirin�"
  !define MUI_TEXT_WELCOME_INFO_TEXT "Ev s�rbaz d� di dema sazkirina $(^NameDA) de r�beriya te bike.\r\n\r\nBer� tu dest bi sazkirin� bik�, em p��niyar dikin tu hem� bernamey�n vekir� bigir�. Bi v� reng� bey� tu komputera ji n� ve vek� d� hinek dosiy�n pergal� b�pirsgir�k werin sazkirin.\r\n\r\n$_CLICK"
  
  !define MUI_TEXT_LICENSE_TITLE "Peymana L�sans�"  
  !define MUI_TEXT_LICENSE_SUBTITLE "Ji kerema xwe re ber� tu bernameya $(^NameDA) saz bik�, peymana l�sans� bixw�ne."
  !define MUI_INNERTEXT_LICENSE_TOP "Ji bo d�mah�ka peyman� bi�kojka 'page down' bitik�ne."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Heke tu �ert�n peyman� dipejir�n�, 'Ez Dipejir�nim'� bitik�ne. Ji bo sazkirina bernameya $(^NameDA) div� tu �ert�n peyman� bipejir�n�."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Heke tu �ert�n peyman� dipejir�n�, zeviya pi�trastkirin� ya j�r�n dagire. Ji bo tu bikar� bernameya $(^NameDA) saz bik� div� tu �ert�n peyman� bipejir�n�. $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Heke tu �ert�n peyman� dipejir�n�, bi�kojka er�kirin� ya j�r�n bitik�ne. Ji bo sazkirina bernameya $(^NameDA) div� tu �ert�n peyman� bipejir�n�. $_CLICK"
  
  !define MUI_TEXT_COMPONENTS_TITLE "Hilbijartina pareyan"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Ji bo sazkirina $(^NameDA) parey�n tu dixwaz� hilbij�re."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Dazan�n"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE 
   !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Ji bo tu der bar� pareyan de agahiyan bist�n� n��anek� bibe ser pareyek�."
   !else 
   !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Ji bo tu der bar� pareyan de agahiyan bist�n� pareyek� hilbij�re." 
  !endif   
  !define MUI_TEXT_DIRECTORY_TITLE "Hilbijartina peldanka armanckir�"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Peldanka tu dixwaz� bernameya $(^NameDA) t� de were sazkirin hilbij�re."
  
  !define MUI_TEXT_INSTALLING_TITLE "T� sazkirin"
  !define MUI_TEXT_INSTALLING_SUBTITLE "Ji kerema xwe re heta sazkirina $(^NameDA) biqede raweste."
  
  !define MUI_TEXT_FINISH_TITLE "Sazkirin Qediya"
  !define MUI_TEXT_FINISH_SUBTITLE "Sazkirin bi serkeftin� qediya."
  
  !define MUI_TEXT_ABORT_TITLE "Sazkirin hate betalkirin"
  !define MUI_TEXT_ABORT_SUBTITLE "Sazkirin be tevah� qediya."
  
  !define MUI_BUTTONTEXT_FINISH "&Biqed�ne"
  !define MUI_TEXT_FINISH_INFO_TITLE "S�rbaziya sazkirina $(^NameDA) diqede."
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) li komputera te hate barkirin.\r\n\r\n'Biqed�ne'y� bitik�ne � sazkirin� bi daw� b�ne."
  !define MUI_TEXT_FINISH_INFO_REBOOT "Ji bo bidaw�kirina sazkirina $(^NameDA) div� tu komputer� ji n� ve vek�.Tu dixwaz� komputer� ji n� ve vek�?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Ji n� ve veke"
  !define MUI_TEXT_FINISH_REBOOTLATER "Ez� pa�� ji n� ve vekim."
  !define MUI_TEXT_FINISH_RUN "Bernameya $(^NameDA) bixebit�ne"
  !define MUI_TEXT_FINISH_SHOWREADME "Dosiya min bixw�ne/readme &n��an bide"
  
  !define MUI_TEXT_STARTMENU_TITLE "Hilbijartina Peldanka P��eka Destp�k�"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Peldanka p��eka destp�k� ya ku d� kineriya $(^NameDA) t� de were bikaran�n hilbij�re."
  !define MUI_INNERTEXT_STARTMENU_TOP "Peldanka p��eka destp�k� ya ku d� kineriya bernamey� t� de were bicihkirin hilbij�re.  Tu dikar� bi navek� n� peldankeke n� ava bik�."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "B�y� ��kirina kineriy� bidom�ne"
  
  !define MUI_TEXT_ABORTWARNING "Tu bawer � ku dixwaz� ji sazkirina $(^Name) derkev�?"
  
  
  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Tu bi x�r hat� s�rbaziya rakirina bernameya $(^NameDA)"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Ev s�rbaz ji bo rakirina bernameya $(^NameDA) d� al�kariya te bike.\r\n\r\nBer� tu dest bi rakirina bernamey� bik�, bernamey�n vekir� hem�yan bigire. Bi v� reng� d� re tu mecb�r nam�n� ku komputera xwe bigir� � ji n� ve veki.\r\n\r\n$_CLICK"
  
  !define MUI_UNTEXT_CONFIRM_TITLE "Bernameya $(^NameDA) Rake"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Rakirina bernameya $(^NameDA) ji pergala te."
  
  !define MUI_UNTEXT_LICENSE_TITLE "Peymana L�sans�"  
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Ber� tu bernameya $(^NameDA) ji pergala xwe rak� peyman� bixw�ne."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Heke tu �ert�n peyman� dipejir�n�, 'Dipejir�nim'� bitik�ne. Ji bo rakirina bernameya  $(^NameDA) div� tu �ert�n peyman� bipejir�n�."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Heke tu �ert�n peyman� dipejir�n�, zeviya er�kirin� ya j�r�n dagire. Ji bo tu bernameya $(^NameDA) ji pergala xwe rak� div� tu peyman� bipejir�n�. $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Heke tu �ert�n peyman� dipejir�n�, bi�kojka er�kirin� ya j�r�n hilbij�re. Ji bo tu bernameya  $(^NameDA) ji pergala xwe rak� div� tu �ert�n peyman� bipejir�n�. $_CLICK"
  
  !define MUI_UNTEXT_COMPONENTS_TITLE "Hilbijartina Pareyan"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Pareya bernameya $(^NameDA) ku tu dixwaz� rak� hilbij�re."
  
  !define MUI_UNTEXT_DIRECTORY_TITLE "Hilbijartina Peldanka D� Were Rakirin"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Peldanka bernameya $(^NameDA) ku tudixwaz� rak� hilbij�re."
  
  !define MUI_UNTEXT_UNINSTALLING_TITLE "T� rakirin"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Heta bernameya $(^NameDA) ji pergala te were rakirin raweste."
    
  !define MUI_UNTEXT_FINISH_TITLE "Rakirina Bernamey� Biqed�ne"
  !define MUI_UNTEXT_FINISH_SUBTITLE "Rakirina bernamey� bi serkeftin p�k hat."
  
  !define MUI_UNTEXT_ABORT_TITLE "Rakirina bernamey� hate betalkirin"
  !define MUI_UNTEXT_ABORT_SUBTITLE "Rakirina bernamey� neqediya."
  
  !define MUI_UNTEXT_FINISH_INFO_TITLE "S�rbaziya Rakirina Bernameya $(^NameDA) T� Temamkirin"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "Bernameya $(^NameDA) ji pergale hate rakirin.\r\n\r\nJi bo girtina s�rbaz 'biqed�ne'y� bitik�ne."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "Ji bo rakirina bernameya $(^NameDA) biqede div� tu komputera xwe ji n� ve vek�. Tu dixwaz� niha komputera te were girtin � ji n� ve dest p� bike?"
  
  !define MUI_UNTEXT_ABORTWARNING "Tu bawer � ku dixwaz� dest ji rakirina bernameya $(^Name) berd�?"  
  
!insertmacro MUI_LANGUAGEFILE_END