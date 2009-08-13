;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Croatian (1050)
;By Igor Ostriz

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Croatian"

  !define MUI_LANGNAME "Hrvatski" ;Use only ASCII characters (if this is not possible, use the English name)

  !define MUI_TEXT_WELCOME_INFO_TITLE "Dobrodo�li u instalaciju programa $(^NameDA)"
  !define MUI_TEXT_WELCOME_INFO_TEXT "Instalacija programa $(^NameDA) na Va�e ra�unalo sastoji se od nekoliko jednostavnih koraka kroz koje �e Vas provesti ovaj �arobnjak.\r\n\r\nPreporu�amo zatvaranje svih ostalih aplikacija prije samog po�etka instalacije. To �e omogu�iti nadogradnju nekih sistemskih datoteka bez potrebe za ponovnim pokretanjem Va�eg ra�unala. U svakom trenutku instalaciju mo�ete prekinuti pritiskom na 'Odustani'.\r\n\r\n$_CLICK"

  !define MUI_TEXT_LICENSE_TITLE "Licen�ni ugovor"
  !define MUI_TEXT_LICENSE_SUBTITLE "Molim pro�itajte licencu prije instalacije programa $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_TOP "'Page Down' za ostatak licence."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Ukoliko prihva�ate uvjete licence, odaberite 'Prihva�am' za nastavak. Morate prihvatiti licencu za instalaciju programa $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ukoliko prihva�ate uvjete licence, ozna�ite donji kvadrati�. Morate prihvatiti licencu za instalaciju programa $(^NameDA). $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ukoliko prihva�ate uvjete licence, odaberite prvu donju opciju. Morate prihvatiti licencu za instalaciju programa $(^NameDA). $_CLICK"
  
  !define MUI_TEXT_COMPONENTS_TITLE "Izbor komponenti"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Odaberite komponente programa $(^NameDA) koje �elite instalirati."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Opis"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Postavite pokaziva� iznad komponente za njezin opis."
  !else
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Ozna�ite komponentu za njezin opis."
  !endif

  !define MUI_TEXT_DIRECTORY_TITLE "Odaberite odredi�te za instalaciju"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Odaberite mapu u koju �elite instalirati program $(^NameDA)."

  !define MUI_TEXT_INSTALLING_TITLE "Instaliranje"
  !define MUI_TEXT_INSTALLING_SUBTITLE "Molim pri�ekajte na zavr�etak instalacije programa $(^NameDA)."

  !define MUI_TEXT_FINISH_TITLE "Kraj instalacije"
  !define MUI_TEXT_FINISH_SUBTITLE "Instalacija je u potpunosti zavr�ila uspje�no."

  !define MUI_TEXT_ABORT_TITLE "Instalacija je prekinuta"
  !define MUI_TEXT_ABORT_SUBTITLE "Instalacija nije zavr�ila uspje�no."

  !define MUI_BUTTONTEXT_FINISH "&Kraj"
  !define MUI_TEXT_FINISH_INFO_TITLE "Dovr�enje instalacije programa $(^NameDA)"
  !define MUI_TEXT_FINISH_INFO_TEXT "Program $(^NameDA) je instaliran na Va�e ra�unalo.\r\n\r\nOdaberite 'Kraj' za zavr�etak."
  !define MUI_TEXT_FINISH_INFO_REBOOT "Va�e ra�unalo treba ponovno pokrenuti za dovr�enje instalacije programa $(^NameDA). �elite li to u�initi sada?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Ponovno pokreni ra�unalo sada"
  !define MUI_TEXT_FINISH_REBOOTLATER "Ponovno �u pokrenuti ra�unalo kasnije"
  !define MUI_TEXT_FINISH_RUN "&Pokreni program $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "Prika�i &Readme"

  !define MUI_TEXT_STARTMENU_TITLE "Izbor mape u Start meniju"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Odaberite ime za programsku mapu unutar Start menija."
  !define MUI_INNERTEXT_STARTMENU_TOP "Program �e pripadati odabranoj programskoj mapi u Start meniju. Mo�ete odrediti novo ime za mapu ili odabrati ve� postoje�u."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "Nemoj napraviti pre�ace"

  !define MUI_TEXT_ABORTWARNING "Jeste li sigurni da �elite prekinuti instalaciju programa $(^Name)?"


  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Dobrodo�li u postupak uklanjanja programa $(^NameDA)"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Ovaj �e Vas �arobnjak provesti kroz postupak uklanjanja programa $(^NameDA).\r\n\r\nPrije samog po�etka, molim zatvorite program $(^NameDA) ukoliko je slu�ajno otvoren.\r\n\r\n$_CLICK"
  
  !define MUI_UNTEXT_CONFIRM_TITLE "Uklanjanje programa $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Program $(^NameDA) �e biti uklonjen s Va�eg ra�unala."

  !define MUI_UNTEXT_LICENSE_TITLE "Licen�ni ugovor"  
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Molim pro�itajte licencu prije uklanjanja programa $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Ukoliko prihva�ate uvjete licence, odaberite 'Prihva�am' za nastavak. Morate prihvatiti licencu za uklanjanje programa $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Ukoliko prihva�ate uvjete licence, ozna�ite donji kvadrati�. Morate prihvatiti licencu za uklanjanje programa $(^NameDA). $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Ukoliko prihva�ate uvjete licence, odaberite prvu donju opciju. Morate prihvatiti licencu za uklanjanje programa $(^NameDA). $_CLICK"

  !define MUI_UNTEXT_COMPONENTS_TITLE "Izbor komponenti"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Odaberite koje komponente programa $(^NameDA) �elite ukloniti."
  
  !define MUI_UNTEXT_DIRECTORY_TITLE "Odaberite polazi�te za uklanjanje"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Odaberite mapu iz koje �elite ukloniti program $(^NameDA)."
  
  !define MUI_UNTEXT_UNINSTALLING_TITLE "Uklanjanje"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Molim pri�ekajte na zavr�etak uklanjanja programa $(^NameDA)."

  !define MUI_UNTEXT_FINISH_TITLE "Uklanjanje zavr�eno"
  !define MUI_UNTEXT_FINISH_SUBTITLE "Uklanjanje je u potpunosti zavr�ilo uspje�no."
  
  !define MUI_UNTEXT_ABORT_TITLE "Uklanjanje je prekinuto"
  !define MUI_UNTEXT_ABORT_SUBTITLE "Uklanjanje nije zavr�ilo uspje�no."

  !define MUI_UNTEXT_FINISH_INFO_TITLE "Zavr�etak uklanjanja programa $(^NameDA)"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "Program $(^NameDA) je uklonjen s Va�eg ra�unala.\r\n\r\nOdaberite 'Kraj' za zatvaranje ovog �arobnjaka."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "Va�e ra�unalo treba ponovno pokrenuti za dovr�enje postupka uklanjanja programa $(^NameDA). �elite li to u�initi sada?"

  !define MUI_UNTEXT_ABORTWARNING "Jeste li sigurni da �elite prekinuti uklanjanje programa $(^Name)?"  

!insertmacro MUI_LANGUAGEFILE_END