;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Breton (1150)
;By KAD-Korvigello� An Drouizig

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Breton"

  !define MUI_LANGNAME "Brezhoneg" ;Use only ASCII characters (if this is not possible, use the English name)
  
  !define MUI_TEXT_WELCOME_INFO_TITLE "Degemer mat e skoazeller stalia� $(^NameDA)"
  !define MUI_TEXT_WELCOME_INFO_TEXT "Sturiet e viot gant ar skoazeller-ma� evit stalia� $(^NameDA).\r\n\r\nGwelloc'h eo serri� pep arload oberiant er reizhiad a-raok mont pelloc'h gant ar skoazeller-ma�. Evel-se e c'heller nevesaat ar restro� reizhiad hep rankout adloc'ha� hoc'h urzhiataer.\r\n\r\n$_CLICK"
  
  !define MUI_TEXT_LICENSE_TITLE "La�vaz emglev"  
  !define MUI_TEXT_LICENSE_SUBTITLE "Bezit aketus en ur lenn pep term eus al la�vaz a-raok stalia� $(^NameDA), mar plij."
  !define MUI_INNERTEXT_LICENSE_TOP "Pouezit war � Pajenn a-raok � evit lenn ar pajenno� eus al la�vaz da-heul."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Mar degemerit pep term eus al la�vaz, klikit war � War-lerc'h �. Ret eo deoc'h degemer al la�vaz evit stalia� $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Mar degemerit pep term eus al la�vaz, klikit war al log a-zindan. Ret eo deoc'h degemer al la�vaz a-benn stalia� $(^NameDA). $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Mar degemerit pep term eus al la�vaz, diuzit an dibab kenta� a-zindan. Ret eo deoc'h degemer al la�vaz a-benn stalia� $(^NameDA). $_CLICK"
  
  !define MUI_TEXT_COMPONENTS_TITLE "Dibab elfenno�"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Dibabit pe elfenn(o�) $(^NameDA) a fell deoc'h stalia�."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Deskrivadenn"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Lakait ho logodenn a-zioc'h an elfenn evit gwelout he deskrivadenn."
  !else
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Diuzuit an elfenn evit gwelout he deskrivadenn."
  !endif
  
  !define MUI_TEXT_DIRECTORY_TITLE "Dibabit al lec'hiadur stalia�"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Dibabit ar c'havlec'h ma vo lakaet $(^NameDA) enna�."
  
  !define MUI_TEXT_INSTALLING_TITLE "O stalia�"
  !define MUI_TEXT_INSTALLING_SUBTITLE "Gortozit mar plij, ema� $(^NameDA) o veza� staliet."
  
  !define MUI_TEXT_FINISH_TITLE "Echu eo gant ar stalia�"
  !define MUI_TEXT_FINISH_SUBTITLE "Kaset eo bet da benn mat ar stalia�."
  
  !define MUI_TEXT_ABORT_TITLE "Stalia� paouezet"
  !define MUI_TEXT_ABORT_SUBTITLE "N'eo ket bet kaset da benn mat ar stalia�."
  
  !define MUI_BUTTONTEXT_FINISH "&Echui�"
  !define MUI_TEXT_FINISH_INFO_TITLE "Oc'h echui� stalia� $(^NameDA) gant ar skoazeller"
  !define MUI_TEXT_FINISH_INFO_TEXT "Staliet eo bet $(^NameDA) war hoc'h urzhiataer.\r\n\r\nKlikit war � Echui� � evit serri� ar skoazeller-ma�."
  !define MUI_TEXT_FINISH_INFO_REBOOT "Ret eo hoc'h urzhiataer beza� adloc'het evit ma vez kaset da benn stalia� $(^NameDA). Ha fellout a ra deoc'h adloc'ha� diouzhtu ?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Adloc'ha� diouzhtu"
  !define MUI_TEXT_FINISH_REBOOTLATER "Fellout a ra din adloc'ha� diwezatoc'h dre zorn"
  !define MUI_TEXT_FINISH_RUN "&La�sa� $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "&Diskouez ar restr Malennit"
  
  !define MUI_TEXT_STARTMENU_TITLE "Diskouez kavlec'h al La�ser loc'ha�"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Dibabit ur c'havlec'h La�ser loc'ha� evit berradenno� $(^NameDA)."
  !define MUI_INNERTEXT_STARTMENU_TOP "Diuzit ar c'havlec'h La�ser loc'ha� e vo savet enna� berradenno� ar goulevio�. Gallout a rit ingal rei� un anv evit sevel ur c'havlec'h nevez."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "Chom hep sevel berradenno�"
  
  !define MUI_TEXT_ABORTWARNING "Ha sur oc'h e fell deoc'h kuitaat stalia� $(^Name) ?"
  
  
  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Degemer mat er skoazeller distalia� $(^NameDA)"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Sturiet e viot gant ar skoazeller-ma� a-benn distalia� $(^NameDA).\r\n\r\nEn em asurit n'eo ket la�set $(^NameDA) a-raok mont pelloc'h gant an distalia�.\r\n\r\n$_CLICK"
  
  !define MUI_UNTEXT_CONFIRM_TITLE "Distalia� $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Dilemel $(^NameDA) adalek hoc'h urzhiataer."
  
  !define MUI_UNTEXT_LICENSE_TITLE "La�vaz emglev"  
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Trugarez da lenn al la�vaz a-raok distalia� $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Mar degemerit pep term eus al la�vaz, klikit war � A-du emaon � evit kenderc'hel. Ret eo deoc'h degemer al la�vaz evit distalia� $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Mar degemerit pep term eus al la�vaz, klikit war al log a-zindan. Ret eo deoc'h degemer al la�vaz evit distalia� $(^NameDA). $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Mar degemerit pep term eus al la�vaz, dizuit an dibab kenta� a-zindan. Ret eo deoc'h degemer al la�vaz evit distalia� $(^NameDA). $_CLICK"
  
  !define MUI_UNTEXT_COMPONENTS_TITLE "Dibabit elfenno�"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Dibabit pe elfenn(o�) $(^NameDA) a fell deoc'h distalia�."
  
  !define MUI_UNTEXT_DIRECTORY_TITLE "Dibabit al lec'hiadur distalia�"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Dibabit ar c'havlec'h e vo dilamet $(^NameDA) diouta�."
  
  !define MUI_UNTEXT_UNINSTALLING_TITLE "O tistalia�"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Gortozit mar plij, ema� $(^NameDA) o veza� distaliet."
    
  !define MUI_UNTEXT_FINISH_TITLE "Echu eo gant an distalia�"
  !define MUI_UNTEXT_FINISH_SUBTITLE "Gant berzh eo bet kaset da benn an distalia�."
  
  !define MUI_UNTEXT_ABORT_TITLE "Distalia� paouezet"
  !define MUI_UNTEXT_ABORT_SUBTITLE "N'eo ket bet kaset da benn mat an distalia�."
  
  !define MUI_UNTEXT_FINISH_INFO_TITLE "Oc'h echui� distalia� $(^NameDA) gant ar skoazeller"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "Distaliet eo bet $(^NameDA) diouzh hoc'h urzhiataer.\r\n\r\nKlikit war � Echui� � evit serri� ar skoazeller-ma�."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "Ret eo hoc'h urzhiataer beza� adloc'het evit ma vez kaset da benn distalia� $(^NameDA). Ha fellout a ra deoc'h adloc'ha� diouzhtu ?"
  
  !define MUI_UNTEXT_ABORTWARNING "Ha sur oc'h e fell deoc'h kuitaat distalia� $(^Name) ?"
  
!insertmacro MUI_LANGUAGEFILE_END
