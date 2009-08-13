;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Lithuanian (1063)
;By Vytautas Krivickas (Vytautas). Updated by Danielius Scepanskis (Daan daniel@takas.lt) 2004.01.09

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Lithuanian"

  !define MUI_LANGNAME "Lietuviu" ;Use only ASCII characters (if this is not possible, use the English name)

  !define MUI_TEXT_WELCOME_INFO_TITLE "Sveiki atvyk� � $(^NameDA) �diegimo program�."
  !define MUI_TEXT_WELCOME_INFO_TEXT "�i programa jums pad�s lengvai �diegti $(^NameDA).\r\n\r\nRekomenduojama i�jungti visas programas, prie� pradedant �diegim�. Tai leis atnaujinti sistemos failus neperkraunat kompiuterio.\r\n\r\n"
  
  !define MUI_TEXT_LICENSE_TITLE "Naudojimo sutartis"  
  !define MUI_TEXT_LICENSE_SUBTITLE "Pra�ome perskaityti sutart� prie� �diegdami $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_TOP "Paspauskite Page Down ir perskaitykite vis� sutart�."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Jei j�s sutinkate su nurodytomis s�lygomis, spauskite Sutinku. J�s privalote sutikti, jei norite �diegti $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Jei j�s sutinkate su nurodytomis s�lygomis, pad�kite varnel� tam skirtame laukelyje. J�s privalote sutikti, jei norite �diegti $(^NameDA). "
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Jei j�s sutinkate su nurodytomis s�lygomis, pasirinkite pirm� pasirinkim� esant� �emiau. J�s privalote sutikti, jei norite �diegti $(^NameDA). "
  
  !define MUI_TEXT_COMPONENTS_TITLE "Pasirinkite"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Pasirinkite kokias $(^NameDA) galimybes j�s norite �diegti."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Paai�kinimas"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "U�veskite pel�s �ymekl� ant komponento ir pamatysite jo apra�ym�."
  !else
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Pasirinkite komponent� ir pamatysite jo apra�ym�."
  !endif
  
  !define MUI_TEXT_DIRECTORY_TITLE "Pasirinkite �diegimo viet�"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Pasirinkite katalog� � k�ri �diegsite $(^NameDA)."
  
  !define MUI_TEXT_INSTALLING_TITLE "Diegiama"
  !define MUI_TEXT_INSTALLING_SUBTITLE "Pra�ome palaukti, kol $(^NameDA) bus �diegtas."
  
  !define MUI_TEXT_FINISH_TITLE "�diegimas baigtas"
  !define MUI_TEXT_FINISH_SUBTITLE "�diegimas baigtas sekmingai."
  
  !define MUI_TEXT_ABORT_TITLE "�diegimas nutrauktas"
  !define MUI_TEXT_ABORT_SUBTITLE "�diegimas nebuvo baigtas sekmingai."
  
  !define MUI_BUTTONTEXT_FINISH "&Baigti"
  !define MUI_TEXT_FINISH_INFO_TITLE "Baigiu $(^NameDA) �diegimo proces�"
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) buvo �diegtas � j�s� kompiuter�.\r\n\r\nPaspauskite Baigti."
  !define MUI_TEXT_FINISH_INFO_REBOOT "J�s� kompiuteris turi b�ti perkrautas, kad b�t� baigtas $(^NameDA) �diegimas. Ar j�s norite perkrauti dabar?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Perkrauti dabar"
  !define MUI_TEXT_FINISH_REBOOTLATER "A� noriu perkrauti veliau pats"
  !define MUI_TEXT_FINISH_RUN "&Leisti $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "&Parodyti dokumentacij�"
  
  !define MUI_TEXT_STARTMENU_TITLE "Pasirinkite Start Menu katalog�"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Pasirinkite Start Menu katalog�, kuriame bus sukurtos programos nuorodos."
  !define MUI_INNERTEXT_STARTMENU_TOP "Pasirinkite Start Menu katalog�, kuriame bus sukurtos programos nuorodos. J�s taip pat galite sukurti nauj� katalog�."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "Nekurti nuorod�"
  
  !define MUI_TEXT_ABORTWARNING "Ar j�s tikrai norite i�jungti $(^Name) �diegimo program�?"
  
  
  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Sveiki atvyk� � $(^NameDA) pa�alinimo program�."
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "�i programa jums pad�s lengvai i�trinti $(^NameDA).\r\n\r\nPrie� pradedant pasitikrinkite kad $(^NameDA) yra i�jungta.\r\n\r\n"

  !define MUI_UNTEXT_CONFIRM_TITLE "Panaikinti $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "I�trinti $(^NameDA) i� j�s� kompiuterio."
  
  !define MUI_UNTEXT_LICENSE_TITLE "Naudojimo sutartis"
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Pra�ome perskaityti sutart� prie� $(^NameDA) pa�alinim�."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Jei j�s sutinkate su nurodytomis s�lygomis, spauskite Sutinku. J�s privalote sutikti, jei norite i�trinti $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "s, pad�kite varnel� tam skirtame laukelyje. J�s privalote sutikti, jei norite i�trinti $(^NameDA). "
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Jei j�s sutinkate su nurodytomis s�lygomis, pasirinkite pirm� pasirinkim� esant� �emiau. J�s privalote sutikti, jei norite i�trinti $(^NameDA)."

  !define MUI_UNTEXT_UNINSTALLING_TITLE "�alinama"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Pra�ome palaukti, kol $(^NameDA) bus pa�alinta."

  !define MUI_UNTEXT_COMPONENTS_TITLE "Pasirinkite"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Pasirinkite kokias $(^NameDA) galimybes j�s norite pa�alinti."

  !define MUI_UNTEXT_DIRECTORY_TITLE "Pasirinkite i�trinimo viet�"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Pasirinkite katalog� i� kurio i�trinsite $(^NameDA)."
    
  !define MUI_UNTEXT_FINISH_TITLE "Programos pa�alinimas baigtas"
  !define MUI_UNTEXT_FINISH_SUBTITLE "I�trynimas baigtas sekmingai."
  
  !define MUI_UNTEXT_ABORT_TITLE "I�trynimas nutrauktas"
  !define MUI_UNTEXT_ABORT_SUBTITLE "I�trynimas nebuvo baigtas sekmingai."
  
  !define MUI_UNTEXT_FINISH_INFO_TITLE "Baigiu $(^NameDA) pa�alinimo program�."
  !define MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) buvo i�trinta i� j�s� kompiuterio.\r\n\r\nPaspauskite Baigti."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "J�s� kompiuteris turi b�ti perkrautas, kad b�t� baigtas $(^NameDA) pa�alinimas. Ar j�s norite perkrauti dabar?"
  
  !define MUI_UNTEXT_ABORTWARNING "Ar j�s tikrai norite i�jungti $(^Name) pa�alinimo program�?"
  
!insertmacro MUI_LANGUAGEFILE_END
