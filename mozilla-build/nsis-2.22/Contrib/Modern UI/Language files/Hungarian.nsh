;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Hungarian (1038)
;Translation by Jozsef Tamas Herczeg ( - 1.61-ig),
;               Lajos Molnar (Orfanik) <orfanik@axelero.hu> ( 1.62 - t�l)

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Hungarian"

  !define MUI_LANGNAME "Magyar" ;Use only ASCII characters (if this is not possible, use the English name)

  !define MUI_TEXT_WELCOME_INFO_TITLE "�dv�zli a(z) $(^NameDA) Telep�t� Var�zsl�"
  !define MUI_TEXT_WELCOME_INFO_TEXT "A(z) $(^NameDA) telep�t�se k�vetkezik a sz�m�t�g�pre.\r\n\r\nJavasoljuk, hogy ind�t�s el�tt z�rja be a fut� alkalmaz�sokat. �gy a telep�t� a rendszer �jraind�t�sa n�lk�l tudja friss�teni a sz�ks�ges rendszerf�jlokat.\r\n\r\n$_CLICK"

  !define MUI_TEXT_LICENSE_TITLE "Licencszerz�d�s"
  !define MUI_TEXT_LICENSE_SUBTITLE "A(z) $(^NameDA) telep�t�se el�tt tekintse �t a szerz�d�s felt�teleit."
  !define MUI_INNERTEXT_LICENSE_TOP "A PageDown gombbal olvashatja el a szerz�d�s folytat�s�t."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Ha elfogadja a szerz�d�s valamennyi felt�tel�t, az Elfogadom gombbal folytathatja. El kell fogadnia a(z) $(^NameDA) telep�t�s�hez."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Amennyiben elfogadja a felt�teleket, jel�lje be a jel�l�n�nyzeten. A(z) $(^NameDA) telep�t�s�hez el kell fogadnia a felt�teleket. $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Amennyiben elfogadja a felt�teleket, v�lassza az els� opci�t. A(z) $(^NameDA) telep�t�s�hez el kell fogadnia a felt�teleket. $_CLICK"

  !define MUI_TEXT_COMPONENTS_TITLE "�sszetev�k kiv�laszt�sa"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "V�lassza ki, hogy a(z) $(^NameDA) mely funkci�it k�v�nja telep�teni."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Le�r�s"
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Vigye r� az egeret az �sszetev�re, hogy megtekinthesse a le�r�s�t."

  !define MUI_TEXT_DIRECTORY_TITLE "Telep�t�si hely kiv�laszt�sa"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "V�lassza ki a(z) $(^NameDA) telep�t�s�nek mapp�j�t."

  !define MUI_TEXT_INSTALLING_TITLE "Telep�t�si folyamat"
  !define MUI_TEXT_INSTALLING_SUBTITLE "Kis t�relmet a(z) $(^NameDA) telep�t�s�ig."

  !define MUI_TEXT_FINISH_TITLE "Telep�t�s befejez�d�tt"
  !define MUI_TEXT_FINISH_SUBTITLE "A telep�t�s sikeresen befejez�d�tt."

  !define MUI_TEXT_ABORT_TITLE "A telep�t�s megszakadt"
  !define MUI_TEXT_ABORT_SUBTITLE "A telep�t�s sikertelen volt."

  !define MUI_BUTTONTEXT_FINISH "&Befejez�s"
  !define MUI_TEXT_FINISH_INFO_TITLE "A(z) $(^NameDA) telep�t�se megt�rt�nt."
  !define MUI_TEXT_FINISH_INFO_TEXT "A(z) $(^NameDA) telep�t�se megt�rt�nt.\r\n\r\nA Befejez�s gomb megnyom�s�val z�rja be a var�zsl�t."
  !define MUI_TEXT_FINISH_INFO_REBOOT "A(z) $(^NameDA) telep�t�s�nek befejez�s�hez �jra kell ind�tani a rendszert. Most akarja �jraind�tani?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Most ind�tom �jra"
  !define MUI_TEXT_FINISH_REBOOTLATER "K�s�bb fogom �jraind�tani"
  !define MUI_TEXT_FINISH_RUN "$(^NameDA) futtat�sa"
  !define MUI_TEXT_FINISH_SHOWREADME "OlvassEl f�jl megjelen�t�se"

  !define MUI_TEXT_STARTMENU_TITLE "Start men� mappa kijel�l�se"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Start men� mappa kijel�l�se a program parancsikonjaihoz."
  !define MUI_INNERTEXT_STARTMENU_TOP "Jel�lj�n ki egy mapp�t a Start men�ben, melybe a program parancsikonjait fogja elhelyezni. Be�rhatja �j mappa nev�t is."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "Nincs parancsikon elhelyez�s"

  !define MUI_TEXT_ABORTWARNING "Biztos, hogy ki akar l�pni a(z) $(^Name) Telep�t�b�l?"


  !define MUI_UNTEXT_WELCOME_INFO_TITLE "�dv�zli a(z) $(^NameDA) Elt�vol�t� Var�zsl�"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Ez a var�zsl� seg�ti a(z) $(^NameDA) elt�vol�t�s�ban.\r\n\r\nMiel�tt elkezdi az elt�vil�t�st gy�z�dj�n meg arr�l, hogy a(z) $(^NameDA) nem fut.\r\n\r\n$_CLICK"

  !define MUI_UNTEXT_CONFIRM_TITLE "A(z) $(^NameDA) Elt�vol�t�sa."
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "A(z) $(^NameDA) elt�vol�t�sa k�vetkezik a sz�m�t�g�pr�l."

  !define MUI_UNTEXT_LICENSE_TITLE "Licencszerz�d�s"
  !define MUI_UNTEXT_LICENSE_SUBTITLE "A(z) $(^NameDA) elt�vol�t�sa el�tt tekintse �t a szerz�d�s felt�teleit."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Ha elfogadja a szerz�d�s valamennyi felt�tel�t, az Elfogadom gombbal folytathatja. El kell fogadnia a(z) $(^NameDA) elt�vol�t�s�hoz."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Amennyiben elfogadja a felt�teleket, jel�lje be a jel�l�n�nyzeten. A(z) $(^NameDA) elt�vol�t�s�hoz el kell fogadnia a felt�teleket. $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Amennyiben elfogadja a felt�teleket, v�lassza az els� opci�t. A(z) $(^NameDA) elt�vol�t�s�hoz el kell fogadnia a felt�teleket. $_CLICK"

  !define MUI_UNTEXT_COMPONENTS_TITLE "�sszetev�k kiv�laszt�sa"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "V�lassza ki, hogy a(z) $(^NameDA) mely funkci�it k�v�nja elt�vol�tani."

  !define MUI_UNTEXT_DIRECTORY_TITLE "Telep�t�si hely kiv�laszt�sa"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "V�lassza ki a(z) $(^NameDA) telep�t�s�nek mapp�j�t."

  !define MUI_UNTEXT_UNINSTALLING_TITLE "Elt�vol�t�si folyamat"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Kis t�relmet a(z) $(^NameDA) elt�vol�t�s�ig."

  !define MUI_UNTEXT_FINISH_TITLE "Az elt�vol�t�s befejez�d�tt"
  !define MUI_UNTEXT_FINISH_SUBTITLE "Az elt�vol�t�s sikeresen befejez�d�tt."

  !define MUI_UNTEXT_ABORT_TITLE "Az elt�vol�t�s megszakadt"
  !define MUI_UNTEXT_ABORT_SUBTITLE "Az elt�vol�t�s sikertelen volt."

  !define MUI_UNTEXT_FINISH_INFO_TITLE "A(z) $(^NameDA) elt�vol�t�s var�zsl�j�nak befejez�se."
  !define MUI_UNTEXT_FINISH_INFO_TEXT "A(z) $(^NameDA) elt�vol�t�sa sikeresen befejez�d�tt.\r\n\r\nA Finish-re kattintva bez�rul ez a var�zsl�."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "A sz�m�t�g�pet �jra kell ind�tani, hogy a(z) $(^NameDA) elt�vol�t�sa teljes legyen. Akarja most �jraind�tani a rendszert?"

  !define MUI_UNTEXT_ABORTWARNING "Biztos, hogy ki akar l�pni a(z) $(^Name) Elt�vol�t�b�l?"

!insertmacro MUI_LANGUAGEFILE_END