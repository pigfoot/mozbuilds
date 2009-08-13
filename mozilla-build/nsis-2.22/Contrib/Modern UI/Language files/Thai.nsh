;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Thai (1054)
;By SoKoOLz, TuW@nNu (asdfuae)

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Thai"

  !define MUI_LANGNAME "Thai" ;��੾�е���ѡ�� ASCII (����������ö����, �ô������������ѧ���᷹)
  
  !define MUI_TEXT_WELCOME_INFO_TITLE "�Թ�յ�͹�Ѻ�������õԴ�������� $(^NameDA) "
  !define MUI_TEXT_WELCOME_INFO_TEXT "��ǵԴ����ѵ���ѵԨйӤس�����õԴ��駢ͧ $(^NameDA).\r\n\r\n��Ң��й����Դ�����������������͹����������Դ���, �����繡���ѻഷ�������¢���¤س�����繵�ͧ�ӡ���պٷ����������ͧ�س\r\n\r\n$_CLICK"
  
  !define MUI_TEXT_LICENSE_TITLE "��͵�ŧ����ͧ�Ԣ�Է���"  
  !define MUI_TEXT_LICENSE_SUBTITLE "�ô��ҹ�ǹ�Ԣ�Է������Ǣ�͵�ҧ��ա���駡�͹���س�зӡ�õԴ��� $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_TOP "�� Page Down ������ҹ��͵�ŧ������"
  !define MUI_INNERTEXT_LICENSE_BOTTOM "��Ҥس����Ѻ��͵�ŧ����ͧ�Ԣ�Է���, �� �ѹ����Ѻ ���ͷӵ���, �س��ͧ����Ѻ㹢�͵�ŧ�Ԣ�Է������ͷ��зӡ�õԴ��� $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "��Ҥس����Ѻ��͵�ŧ����ͧ�Ԣ�Է�, �����͡㹡��ͧ��ҧ��ҧ���  �س��ͧ����Ѻ㹢�͵�ŧ�Ԣ�Է������ͷ��зӡ�õԴ��� $(^NameDA). $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "��Ҥس����Ѻ��͵�ŧ����ͧ�Ԣ�Է�,  ���͡������͡�á��ҹ��ҧ��� �س��ͧ����Ѻ㹢�͵�ŧ�Ԣ�Է������ͷ��зӡ�õԴ��� $(^NameDA). $_CLICK"
  
  !define MUI_TEXT_COMPONENTS_TITLE "���͡��ǹ��Сͺ"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "���͡��觷��س��ͧ�����ҹ�ҡ $(^NameDA) ���س��ͧ��õԴ���"
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "��������´"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "��Ѻ�����ͧ�س�˹����ǹ��Сͺ���ʹ���������´"
  !else
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "���͡��ǹ��Сͺ���س��ͧ��ô���������´"
  !endif
  
  !define MUI_TEXT_DIRECTORY_TITLE "���͡������ͧ��õԴ���"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "���͡�������ͧ��õԴ��� $(^NameDA)."
  
  !define MUI_TEXT_INSTALLING_TITLE "���ѧ�Դ���"
  !define MUI_TEXT_INSTALLING_SUBTITLE "�ô��㹢�з�� $(^NameDA) ���ѧ�١�Դ���"
  
  !define MUI_TEXT_FINISH_TITLE "��õԴ����������"
  !define MUI_TEXT_FINISH_SUBTITLE "��õԴ�����������ó�"
  
  !define MUI_TEXT_ABORT_TITLE "��õԴ��駶١¡��ԡ"
  !define MUI_TEXT_ABORT_SUBTITLE "��õԴ��������������ó�"
  
  !define MUI_BUTTONTEXT_FINISH "&�������"
  !define MUI_TEXT_FINISH_INFO_TITLE "��õԴ����ѵ���ѵԢͧ  $(^NameDA) ���ѧ�������"
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) ��١�Դ���ŧ�����ͧ����������ͧ�س����\r\n\r\n�� ����������ͻԴ��ǵԴ����ѵ���ѵ�"
  !define MUI_TEXT_FINISH_INFO_REBOOT "����ͧ����������ͧ�س���繵�ͧ��ʵ�÷����͡�õԴ��駢ͧ $(^NameDA) �����º����, �س��ͧ��è� �պٷ ����ǹ�����?"
  !define MUI_TEXT_FINISH_REBOOTNOW "�պٷ ����ǹ��"
  !define MUI_TEXT_FINISH_REBOOTLATER "�ѹ��ͧ��� �պٷ���µ��ͧ ����ѧ"
  !define MUI_TEXT_FINISH_RUN "&�ѹ $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "&�ʴ���������´"
  
  !define MUI_TEXT_STARTMENU_TITLE "���͡��� Start Menu"
  !define MUI_TEXT_STARTMENU_SUBTITLE "���͡��� Start Menu �������ҧ���쵤ѷ�ͧ $(^NameDA). "
  !define MUI_INNERTEXT_STARTMENU_TOP "���͡��� Start Menu ���س��ͧ��è����ҧ���쵤ѷ�ͧ�����, �س�ѧ����ö��˹������������ҧ����������ա����"
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "����ͧ���ҧ ���쵤ѷ"
  
  !define MUI_TEXT_ABORTWARNING "�س���������Ҥس��ͧ��è��͡�ҡ��õԴ��駢ͧ $(^Name)?"
  
  
  !define MUI_UNTEXT_WELCOME_INFO_TITLE "�Թ�յ�͹�Ѻ�����¡��ԡ��õԴ����ѵ���ѵԢͧ $(^NameDA)"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "��ǵԴ����ѵ���ѵԹ��йӤس������¡��ԡ��õԴ��駢ͧ $(^NameDA).\r\n\r\n��è���������¡��ԡ��õԴ��駹��, �ô��Ǩ�ͺ��� $(^NameDA) �����������\r\n\r\n$_CLICK"
  
  !define MUI_UNTEXT_CONFIRM_TITLE "¡��ԡ��õԴ��� $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "¡��ԡ��õԴ��� $(^NameDA) �ҡ����ͧ����������ͧ�س"
  
  !define MUI_UNTEXT_LICENSE_TITLE "��͵�ŧ����ͧ�Ԣ�Է���" 
  !define MUI_UNTEXT_LICENSE_SUBTITLE "��س���ҹ��͵�ŧ��ҹ�Ԣ�Է����͹�Դ�������� $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "��Ҥس����Ѻ㹢�͵�ŧ��� ��سҡ����� �ѹ����Ѻ ��Фس�е�ͧ��ŧ��͹������������¡��ԡ�Դ�������� $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "��Ҥس����Ѻ��͵�ŧ����ͧ�Ԣ�Է���, �����͡㹡��ͧ��ҧ��ҧ��� �س��ͧ����Ѻ㹢�͵�ŧ�Ԣ�Է������ͷ��зӡ�õԴ��� $(^NameDA). $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "��Ҥس����Ѻ��͵�ŧ����ͧ�Ԣ�Է���, ���͡������͡�á��ҹ��ҧ��� �س��ͧ����Ѻ㹢�͵�ŧ�Ԣ�Է������ͷ��зӡ�õԴ��� $(^NameDA). $_CLICK"
  
  !define MUI_UNTEXT_COMPONENTS_TITLE "���͡��ǹ��Сͺ"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE  "���͡��觷��س��ͧ�����ҹ�ҡ $(^NameDA) ���س��ͧ¡��ԡ��õԴ���"
  
  !define MUI_UNTEXT_DIRECTORY_TITLE "���͡�������ͧ���¡��ԡ��õԴ���"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "���͡������س��ͧ���¡��ԡ��õԴ��駢ͧ $(^NameDA)."
  
  !define MUI_UNTEXT_UNINSTALLING_TITLE "���ѧ¡��ԡ��õԴ���"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "�ô��㹢�з�� $(^NameDA) ���ѧ�١¡��ԡ��õԴ���."
    
  !define MUI_UNTEXT_FINISH_TITLE "���¡��ԡ��õԴ����������"
  !define MUI_UNTEXT_FINISH_SUBTITLE "���¡��ԡ��õԴ����������������ó�"
  
  !define MUI_UNTEXT_ABORT_TITLE "���¡��ԡ��õԴ��駶١¡��ԡ"
  !define MUI_UNTEXT_ABORT_SUBTITLE "���¡��ԡ��õԴ�����������"
  
  !define MUI_UNTEXT_FINISH_INFO_TITLE "���¡��ԡ��õԴ����ѵ���ѵԢͧ $(^NameDA) ���ѧ��������ó�"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) ��١¡��ԡ�͡�ҡ����ͧ����������ͧ�س���� \r\n\r\n�� ������� ���ͻԴ˹�Ҩ͵Դ����ѵ���ѵ�"
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "����ͧ����������ͧ�س���繵�ͧ��ʵ���㹡�÷��зӡ��¡��ԡ��õԴ��駢ͧ $(^NameDA) �������, �س��ͧ��è��պٷ����ǹ�����?"
  
  !define MUI_UNTEXT_ABORTWARNING "�س���������Ҥس��ͧ����͡�ҡ���¡��ԡ��õԴ��駢ͧ $(^Name)?"
  
!insertmacro MUI_LANGUAGEFILE_END