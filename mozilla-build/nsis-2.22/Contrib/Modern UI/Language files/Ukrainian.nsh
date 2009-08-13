;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Ukrainian (1058)
;By Yuri Holubow, http://www.Nash-Soft.com
;Correct by Osidach Vitaly (Vit_Os2)

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Ukrainian"

  !define MUI_LANGNAME "Ukrainian" ;Use only ASCII characters (if this is not possible, use the English name)

  !define MUI_TEXT_WELCOME_INFO_TITLE "������� ������� �� ������� ������������ $(^NameDA)"
  !define MUI_TEXT_WELCOME_INFO_TEXT "���� �������� ���������� $(^NameDA) �� ��� ����'����.\r\n\r\n������������� ������� �� �������� ����� �������� ����������. �� ��������� ������� ������������ ������� ������� ����� ��� ���������������� �������.\r\n\r\n$_CLICK"

  !define MUI_TEXT_LICENSE_TITLE "˳������� �����"  
  !define MUI_TEXT_LICENSE_SUBTITLE "����-����� ����������� ������ ����� ������������� $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_TOP "������i�� PageDown ��� ������������ ���� �����."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "���� �� �������� ��i ����� �����, ������i�� �� ������ ������. �� ������i �������� ����� ����� ��� ������������ $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "���� �� �������� �� ����� �����, ��������� ������ � ���������� �����. �� ������ �������� ����� ����� ��� ������������ $(^NameDA). $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "���� �� �������� �� ����� �����, ������� ������ ������ � ��� �� �����. �� ������ �������� ����� ����� ��� ������������ $(^NameDA). $_CLICK"  

  !define MUI_TEXT_COMPONENTS_TITLE "������ ����������"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "������ ���������� $(^NameDA) ��i �� ������ ����������."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "����"
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "�i����i�� ���� ����� �� ����������, ��� �������� ���� ����."

  !define MUI_TEXT_DIRECTORY_TITLE "����i�� ���� ������������"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "����i�� ���� ��� ������������ $(^NameDA)."
 
  !define MUI_TEXT_INSTALLING_TITLE "��������� �����"
  !define MUI_TEXT_INSTALLING_SUBTITLE "����-����� ���������, ���� �������� ������������ ������ �� �������� ����� $(^NameDA)."
   
  !define MUI_TEXT_FINISH_TITLE "������������ ���������"
  !define MUI_TEXT_FINISH_SUBTITLE "������������ ���i��� ���������."
  
  !define MUI_TEXT_ABORT_TITLE "������������ ���������"
  !define MUI_TEXT_ABORT_SUBTITLE "������������ �� ���� ���i��� ���������."
  
  !define MUI_BUTTONTEXT_FINISH "&ʳ����"
  !define MUI_TEXT_FINISH_INFO_TITLE "���������� ������� ������������ $(^NameDA)"
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) ����������� �� ��� ����'����.\r\n\r\n�������� ʳ���� ��� ������."
  !define MUI_TEXT_FINISH_INFO_REBOOT "��� ����, ��� ��������� ������������ $(^NameDA) ��� ����'���� ������� �����������������. ������� �� �����?"
  !define MUI_TEXT_FINISH_REBOOTNOW "����������������� �����"
  !define MUI_TEXT_FINISH_REBOOTLATER "� ���� ����������������� ��������� �����"
  !define MUI_TEXT_FINISH_RUN "&��������� $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "&�������� ���������� ��� ��������"
  
  !define MUI_TEXT_STARTMENU_TITLE "���� � ���� ����"
  !define MUI_TEXT_STARTMENU_SUBTITLE "������ ���� � ���� ���� ��� ������ ��������."
  !define MUI_INNERTEXT_STARTMENU_TOP "������ ���� � ���� ���� � ��� ������ ������ ������ ��� ����������� ��������. �� ����� ������ ������ ���� ��'� ��� ��������� ���� ����."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "�� ���������� ������"

  !define MUI_TEXT_ABORTWARNING "�� ��������i, �� ������ �������� ������������ $(^Name)?"

  
  !define MUI_UNTEXT_WELCOME_INFO_TITLE "������� ������� �� ������� ��������� $(^NameDA)"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "����� ������� ������ �������� $(^NameDA).\r\n\r\n����� �������� ���������, ��������, �� �� �������� $(^NameDA).\r\n\r\n$_CLICK"
  
  !define MUI_UNTEXT_CONFIRM_TITLE "��������� $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "��������� $(^NameDA) � ������ ����'�����."
  
  !define MUI_UNTEXT_LICENSE_TITLE "˳������� �����"  
  !define MUI_UNTEXT_LICENSE_SUBTITLE "���������� ����� �������� ����� ����� ���������� $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "���� �� �������� ��i ����� �����, ������i�� �� ������ ������. �� ������i �������� ����� ����� ��� ��������� $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "���� �� �������� �� ����� �����, ��������� ������ � ���������� �����. �� ������ �������� ����� ����� ��� ��������� $(^NameDA). $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "���� �� �������� �� ����� �����, ������� ������ ������ � ���, �� �����. �� ������ �������� ����� ����� ��� ��������� $(^NameDA). $_CLICK"
  
  !define MUI_UNTEXT_COMPONENTS_TITLE "���������� ��������"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "������ �� ���������� $(^NameDA) �� ������ ��������."
  
  !define MUI_UNTEXT_DIRECTORY_TITLE "���� ���� ��� ���������"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "������ ����, � ��� �� ������ �������� $(^NameDA)."
  
  !define MUI_UNTEXT_UNINSTALLING_TITLE "���������"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "����-����� ���������, ��� ��������� ����� $(^NameDA)."
    
  !define MUI_UNTEXT_FINISH_TITLE "��������� ���������"
  !define MUI_UNTEXT_FINISH_SUBTITLE "��������� �������� ���� ������ ���������."
  
  !define MUI_UNTEXT_ABORT_TITLE "��������� ���������"
  !define MUI_UNTEXT_ABORT_SUBTITLE "��������� �� ���� �������� �������."
  
  !define MUI_UNTEXT_FINISH_INFO_TITLE "���������� ������� ��������� $(^NameDA)"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) ��������� � ������ ����'�����.\r\n\r\n�������� �����, ��� ������� �������."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "��� ����, ��� �������� ��������� $(^NameDA) ��� ����'���� ������� �����������������. �� ������ ������� �� �����?"
  
  !define MUI_UNTEXT_ABORTWARNING "�� �������� �� ������ �������� ������ ��������� $(^Name)?"
  
!insertmacro MUI_LANGUAGEFILE_END
