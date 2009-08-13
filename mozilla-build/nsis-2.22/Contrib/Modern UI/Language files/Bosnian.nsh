;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Bosnian (5146)
;By Salih �avki�, cavkic@skynet.be

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Bosnian"

  !define MUI_LANGNAME "Bosanski" ;Use only ASCII characters (if this is not possible, use the English name)

  !define MUI_TEXT_WELCOME_INFO_TITLE "Dobrodo�li u program za instalaciju $(^NameDA)"
  !define MUI_TEXT_WELCOME_INFO_TEXT "Ovaj program �e instalirati $(^NameDA) na Va� sistem. \r\n\r\nPreporu�ujemo da neizostavno zatvorite sve druge otvorene programe prije nego �to definitivno zapo�nete sa instaliranjem. To �e omogu�iti bolju nadogradnju odre�enih sistemskih datoteka bez potrebe da Va� ra�unar ponovo startujete. Instaliranje programa mo�ete prekinuti pritiskom na dugme 'Odustani'.\r\n\r\n$_CLICK"

  !define MUI_TEXT_LICENSE_TITLE "Licencni ugovor"
  !define MUI_TEXT_LICENSE_SUBTITLE "Molim pro�itajte licencni ugovor $(^NameDA) prije instalacije programa."
  !define MUI_INNERTEXT_LICENSE_TOP "Pritisnite 'Page Down' na tastaturi za ostatak licence."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Ako prihvatate uslove licence, odaberite 'Prihvatam' za nastavak. Morate prihvatiti licencu za instalaciju programa $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ako prihvatate uslove licence, ozna�ite donji kvadrati�. Morate prihvatiti licencu za instalaciju programa $(^NameDA). $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ako prihvatate uslove licence, odaberite prvu donju opciju. Morate prihvatiti licencu za instalaciju programa $(^NameDA). $_CLICK"
  
  !define MUI_TEXT_COMPONENTS_TITLE "Izbor komponenti za instalaciju"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Izaberite komponente programa $(^NameDA) koje �elite instalirati."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Opis"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Postavite kursor od mi�a iznad komponente da biste vidjeli njezin opis."
  !else
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Selektirajte jednu komponentu da vidite njezin opis."
  !endif

  !define MUI_TEXT_DIRECTORY_TITLE "Odaberite odredi�te za instalaciju"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Odaberite mapu u koju �elite instalirati program $(^NameDA)."

  !define MUI_TEXT_INSTALLING_TITLE "Instaliranje"
  !define MUI_TEXT_INSTALLING_SUBTITLE "Molim pri�ekajte na zavr�etak instalacije programa $(^NameDA)."

  !define MUI_TEXT_FINISH_TITLE "Kraj instalacije"
  !define MUI_TEXT_FINISH_SUBTITLE "Instalacija je u potpunosti uspje�no zavr�ila."

  !define MUI_TEXT_ABORT_TITLE "Instalacija je prekinuta"
  !define MUI_TEXT_ABORT_SUBTITLE "Instalacija nije zavr�ila uspje�no."

  !define MUI_BUTTONTEXT_FINISH "&Kraj"
  !define MUI_TEXT_FINISH_INFO_TITLE "Dovr�avanje instalacije programa $(^NameDA)"
  !define MUI_TEXT_FINISH_INFO_TEXT "Program $(^NameDA) je instaliran na Va�e ra�unar.\r\n\r\nPritisnite dugme 'Kraj' za zavr�etak."
  !define MUI_TEXT_FINISH_INFO_REBOOT "Ra�unar treba ponovno startovati za dovr�avanje instalacije programa $(^NameDA). �elite li to u�initi sada?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Startuj ra�unar odmah sad"
  !define MUI_TEXT_FINISH_REBOOTLATER "Ponovno �u pokrenuti ra�unar kasnije"
  !define MUI_TEXT_FINISH_RUN "&Pokreni program $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "Prika�i datoteku &Readme"

  !define MUI_TEXT_STARTMENU_TITLE "Izbor mape u Start meniju"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Izaberite ime za programsku mapu unutar Start menija."
  !define MUI_INNERTEXT_STARTMENU_TOP "Izaberite jednu mapu u Start meniju u kojoj �elite da se kreiraju pre�ice programa. Mo�ete tako�er unijeti ime za novu mapu ili selektirati ve� postoje�u."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "Nemojte praviti pre�ice"

  !define MUI_TEXT_ABORTWARNING "Jeste li sigurni da �elite prekinuti instalaciju programa $(^Name)?"


  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Dobrodo�li u postupak uklanjanja programa $(^NameDA)"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Ovaj �e Vas vodi� provesti kroz postupak uklanjanja programa $(^NameDA).\r\n\r\nPrije samog po�etka, molim zatvorite program $(^NameDA) ukoliko je slu�ajno otvoren.\r\n\r\n$_CLICK"
  
  !define MUI_UNTEXT_CONFIRM_TITLE "Uklanjanje programa $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Program $(^NameDA) �e biti uklonjen sa Va�eg ra�unara."

  !define MUI_UNTEXT_LICENSE_TITLE "Licencni ugovor o pravu kori�tenja"  
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Molim pro�itajte licencu prije uklanjanja programa $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Ako prihvatate uslove licence, odaberite 'Prihvatam' za nastavak. Morate prihvatiti licencu za uklanjanje programa $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ako prihvatate uslove licence, ozna�ite donji kvadrati�. Morate prihvatiti licencu za uklanjanje programa $(^NameDA). $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ako prihvatate uslove licence, odaberite prvu donju opciju. Morate prihvatiti licencu za uklanjanje programa $(^NameDA). $_CLICK"

  !define MUI_UNTEXT_COMPONENTS_TITLE "Izbor komponenti za uklanjanje"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Izaberite komponente programa $(^NameDA) koje �elite ukloniti."
  
  !define MUI_UNTEXT_DIRECTORY_TITLE "Izaberite polazi�te za uklanjanje"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Selektirajte mapu iz koje �elite ukloniti program $(^NameDA)."
  
  !define MUI_UNTEXT_UNINSTALLING_TITLE "Uklanjanje"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Molim Vas pri�ekajte da vodi� zavr�i uklanjanje $(^NameDA) programa."

  !define MUI_UNTEXT_FINISH_TITLE "Uklanjanje je zavr�eno"
  !define MUI_UNTEXT_FINISH_SUBTITLE "Uklanjanje je u potpunosti zavr�ilo uspje�no."
  
  !define MUI_UNTEXT_ABORT_TITLE "Uklanjanje je prekinuto"
  !define MUI_UNTEXT_ABORT_SUBTITLE "Uklanjanje nije zavr�ilo uspje�no."

  !define MUI_UNTEXT_FINISH_INFO_TITLE "Zavr�etak uklanjanja programa $(^NameDA) sa Va�eg sistema."
  !define MUI_UNTEXT_FINISH_INFO_TEXT "Program $(^NameDA) je uklonjen sa Va�eg ra�unara.\r\n\r\nPritisnite dugme 'Kraj' za zatvaranje ovog prozora."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "Va� ra�unar trebate ponovno startovati da dovr�ite uklanjanje programa $(^NameDA). �elite li da odmah sad ponovo startujete ra�unar?"

  !define MUI_UNTEXT_ABORTWARNING "Jeste li sigurni da �elite prekinuti uklanjanje $(^Name) programa?"  

!insertmacro MUI_LANGUAGEFILE_END

