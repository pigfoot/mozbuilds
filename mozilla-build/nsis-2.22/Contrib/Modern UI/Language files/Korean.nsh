;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Korean (1042)
;By linak linak@korea.com ( ~ V2.0 BETA3 )
;By hardkoder@gmail.com(www.kipple.pe.kr) ( V2.0 BETA3 ~ ) (last update:2004/12/13)
;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Korean"

  !define MUI_LANGNAME "Korean"  ;Use only ASCII characters (if this is not possible, use the English name)

  !ifndef EUL_RUL
    !define EUL_RUL	"(��)��"	; ~��/�� ���� �ذ��� ���� ���� !insertmacro MUI_LANGUAGE "Korean" �ϱ� ���� define �� ������ȴ�.
  !endif

  !define MUI_TEXT_WELCOME_INFO_TITLE "$(^NameDA) ��ġ�� �����մϴ�."
  !define MUI_TEXT_WELCOME_INFO_TEXT "�� ���α׷��� ����� ��ǻ�Ϳ� $(^NameDA)${EUL_RUL} ��ġ�� ���Դϴ�.\r\n\r\n��ġ�� �����ϱ� �� ������ �� ��� ���α׷��� �����Ͽ� �ֽñ� �ٶ��ϴ�. �̴� ������� ���� �ʰ��� �ý��� ������ ������ �� �ְ� ���ݴϴ�.\r\n\r\n$_CLICK"

  !define MUI_TEXT_LICENSE_TITLE "���� ���"
  !define MUI_TEXT_LICENSE_SUBTITLE "$(^NameDA)${EUL_RUL} ��ġ�Ͻñ� ���� ���� ��� ������ ���캸�ñ� �ٶ��ϴ�."
  !define MUI_INNERTEXT_LICENSE_TOP "���� ��� ���� ������ ������ �κ��� ���÷��� [Page Down] Ű�� ���� �ּ���."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "���뿡 �����ϼ̴ٸ� '������'�� ���� �ּ���. $(^NameDA)${EUL_RUL} ��ġ�ϱ� ���ؼ��� �ݵ�� ���뿡 �����ϼž� �մϴ�."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "���뿡 �����ϼ̴ٸ� �Ʒ� ������ ������ �ּ���. $(^NameDA)${EUL_RUL} ��ġ�ϱ� ���ؼ��� �ݵ�� ���뿡 �����ϼž� �մϴ�. $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "���뿡 �����ϼ̴ٸ� ù ��° ������ ������ �ּ���. $(^NameDA)${EUL_RUL} ��ġ�ϱ� ���ؼ��� �ݵ�� ���뿡 �����ϼž� �մϴ�. $_CLICK"

  !define MUI_TEXT_COMPONENTS_TITLE "���� ��� ����"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "��ġ�ϰ��� �ϴ� $(^NameDA)�� ���� ��Ҹ� ������ �ּ���."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "�� ����"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "�� ������ ���� ������ �κп� ���콺�� �÷���������."
  !else
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "�� ������ ���� ������ �κ��� �����ϼ���."
  !endif

  !define MUI_TEXT_DIRECTORY_TITLE "��ġ ��ġ ����"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "$(^NameDA)${EUL_RUL} ��ġ�� ������ ������ �ּ���."

  !define MUI_TEXT_INSTALLING_TITLE "��ġ��"
  !define MUI_TEXT_INSTALLING_SUBTITLE "$(^NameDA)${EUL_RUL} ��ġ�ϴ� ���� ��� ��ٷ� �ּ���."

  !define MUI_TEXT_FINISH_TITLE "��ġ �Ϸ�"
  !define MUI_TEXT_FINISH_SUBTITLE "��ġ�� ���������� �Ϸ�Ǿ����ϴ�."

  !define MUI_TEXT_ABORT_TITLE "��ġ ���"
  !define MUI_TEXT_ABORT_SUBTITLE "���α׷� ��ġ�� ��ҵǾ����ϴ�."

  !define MUI_BUTTONTEXT_FINISH "��ħ"
  !define MUI_TEXT_FINISH_INFO_TITLE "$(^NameDA) ��ġ �Ϸ�"
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA)�� ��ġ�� �Ϸ�Ǿ����ϴ�. ��ġ ���α׷��� ��ġ���� '��ħ' ��ư�� ���� �ּ���."
  !define MUI_TEXT_FINISH_INFO_REBOOT "$(^NameDA)�� ��ġ�� �Ϸ��ϱ� ���ؼ��� �ý����� �ٽ� �����ؾ� �մϴ�. ���� ����� �Ͻðڽ��ϱ�?"
  !define MUI_TEXT_FINISH_REBOOTNOW "���� ����� �ϰڽ��ϴ�."
  !define MUI_TEXT_FINISH_REBOOTLATER "���߿� ����� �ϰڽ��ϴ�."
  !define MUI_TEXT_FINISH_RUN "$(^NameDA) �����ϱ�(&R)"
  !define MUI_TEXT_FINISH_SHOWREADME "Readme ���� ����(&S)"

  !define MUI_TEXT_STARTMENU_TITLE "���� �޴� ���� ����"
  !define MUI_TEXT_STARTMENU_SUBTITLE "���α׷��� �ٷ� ���� �������� ������ ���� �޴� ���� ����."
  !define MUI_INNERTEXT_STARTMENU_TOP "���α׷��� �ٷ� ���� �������� ������ ���� �޴� ������ �����ϼ���. ���ο� ������ �����Ϸ��� ���� �̸��� �Է��ϼ���."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "�ٷ� ���� �������� ������ �ʰڽ��ϴ�."

  !define MUI_TEXT_ABORTWARNING "$(^Name) ��ġ�� ����Ͻðڽ��ϱ�?"


  !define MUI_UNTEXT_WELCOME_INFO_TITLE "$(^NameDA) ���Ÿ� �����մϴ�."
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "�� ���α׷��� ����� ��ǻ�Ϳ��� $(^NameDA)${EUL_RUL} ������ ���Դϴ�.\r\n\r\n���Ÿ� �����ϱ� ���� $(^NameDA)${EUL_RUL} �����Ͽ� �ֽñ� �ٶ��ϴ�.\r\n\r\n$_CLICK"

  !define MUI_UNTEXT_CONFIRM_TITLE "$(^NameDA) ����"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "$(^NameDA) �����ϱ�"

  !define MUI_UNTEXT_LICENSE_TITLE "���� ��� ����"
  !define MUI_UNTEXT_LICENSE_SUBTITLE "$(^NameDA)${EUL_RUL} �����Ͻñ� ���� ���� ��� ������ ���캸�ñ� �ٶ��ϴ�."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "���뿡 �����ϼ̴ٸ� '������'�� ���� �ּ���. $(^NameDA)${EUL_RUL} �����ϱ� ���ؼ��� �ݵ�� ���뿡 �����ϼž� �մϴ�."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "���뿡 �����ϼ̴ٸ� �Ʒ� ������ ������ �ּ���. $(^NameDA)${EUL_RUL} �����ϱ� ���ؼ��� �ݵ�� ���뿡 �����ϼž� �մϴ�. $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "���뿡 �����ϼ̴ٸ� ù ��° ������ ������ �ּ���. $(^NameDA)${EUL_RUL} �����ϱ� ���ؼ��� �ݵ�� ���뿡 �����ϼž� �մϴ�. $_CLICK"

  !define MUI_UNTEXT_COMPONENTS_TITLE "���� ��� ����"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "�����ϰ��� �ϴ� $(^NameDA)�� ���� ��Ҹ� ������ �ּ���."

  !define MUI_UNTEXT_DIRECTORY_TITLE "���� ��ġ ����"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "$(^NameDA)${EUL_RUL} ������ ������ ������ �ּ���."

  !define MUI_UNTEXT_UNINSTALLING_TITLE "������"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "$(^NameDA)${EUL_RUL} �����ϴ� ���� ��� ��ٷ� �ֽñ� �ٶ��ϴ�."

  !define MUI_UNTEXT_FINISH_TITLE "���� ��ħ"
  !define MUI_UNTEXT_FINISH_SUBTITLE "���α׷��� ���������� �����Ͽ����ϴ�."

  !define MUI_UNTEXT_ABORT_TITLE "���α׷� ���� ���"
  !define MUI_UNTEXT_ABORT_SUBTITLE "���α׷� ���Ű� ��ҵǾ����ϴ�."

  !define MUI_UNTEXT_FINISH_INFO_TITLE "���� �Ϸ�"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA)�� ���Ű� �Ϸ� �Ǿ����ϴ�."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "$(^NameDA)�� ���Ÿ� �Ϸ��ϱ� ���ؼ��� �ý����� �ٽ� �����ؾ� �մϴ�. ���� ����� �Ͻðڽ��ϱ�?"
  
  !define MUI_UNTEXT_ABORTWARNING "$(^Name) ���Ÿ� ����Ͻðڽ��ϱ�?"

!insertmacro MUI_LANGUAGEFILE_END