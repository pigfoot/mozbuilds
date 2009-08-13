;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: 'Chinese (Simplified)' (2052)
;Translator: Kii Ali <kiiali@cpatch.org>
;Revision date: 2004-12-15
;Verified by: QFox <qfox99@gmail.com>
;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "SimpChinese"

  !define MUI_LANGNAME "Chinese (Simplified)" ;(�����Ա���ķ�ʽ��д����������) Use only ASCII characters (if this is not possible, use the English name)
  
  !define MUI_TEXT_WELCOME_INFO_TITLE "��ӭʹ�á�$(^NameDA)����װ��"
  !define MUI_TEXT_WELCOME_INFO_TEXT "����򵼽�ָ������ɡ�$(^NameDA)���İ�װ���̡�\r\n\r\n�ڿ�ʼ��װ֮ǰ�������ȹر���������Ӧ�ó����⽫������װ���򡱸���ָ����ϵͳ�ļ���������Ҫ����������ļ������\r\n\r\n$_CLICK"
  
  !define MUI_TEXT_LICENSE_TITLE "���֤Э��"
  !define MUI_TEXT_LICENSE_SUBTITLE "�ڰ�װ��$(^NameDA)��֮ǰ�����Ķ���ȨЭ�顣"
  !define MUI_INNERTEXT_LICENSE_TOP "�� [PgDn] �Ķ�����ȨЭ�顱�����ಿ�֡�"
  !define MUI_INNERTEXT_LICENSE_BOTTOM "��������Э���е�������� [��ͬ��(I)] ������װ�������ѡ�� [ȡ��(C)] ����װ���򽫻�رա��������Э����ܰ�װ��$(^NameDA)����"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "��������Э���е���������·��Ĺ�ѡ�򡣱���Ҫ����Э����ܰ�װ $(^NameDA)��$_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "��������Э���е����ѡ���·���һ��ѡ�����Ҫ����Э����ܰ�װ $(^NameDA)��$_CLICK"
  
  !define MUI_TEXT_COMPONENTS_TITLE "ѡ�����"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "ѡ������Ҫ��װ��$(^NameDA)������Щ���ܡ�"
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "����"
  !ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "�ƶ�������ָ�뵽���֮�ϣ���ɼ�������������"
  !else
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "ѡ��һ���������ɼ�������������"
  !endif
  
  !define MUI_TEXT_DIRECTORY_TITLE "ѡ��װλ��" 
  !define MUI_TEXT_DIRECTORY_SUBTITLE "ѡ��$(^NameDA)���İ�װ�ļ��С�"

  !define MUI_TEXT_INSTALLING_TITLE "���ڰ�װ"
  !define MUI_TEXT_INSTALLING_SUBTITLE "��$(^NameDA)�����ڰ�װ����Ⱥ�..."
  
  !define MUI_TEXT_FINISH_TITLE "��װ���"
  !define MUI_TEXT_FINISH_SUBTITLE "��װ�ѳɹ���ɡ�"
  
  !define MUI_TEXT_ABORT_TITLE "��װ����ֹ"
  !define MUI_TEXT_ABORT_SUBTITLE "��װû�гɹ���"
  
  !define MUI_BUTTONTEXT_FINISH "���(&F)"
  !define MUI_TEXT_FINISH_INFO_TITLE "������ɡ�$(^NameDA)����װ��"
  !define MUI_TEXT_FINISH_INFO_TEXT "��$(^NameDA)���Ѱ�װ�����ϵͳ��\r\n���� [���(F)] �رմ��򵼡�"
  !define MUI_TEXT_FINISH_INFO_REBOOT "���ϵͳ��Ҫ�����������Ա���ɡ�$(^NameDA)���İ�װ������Ҫ����������"
  !define MUI_TEXT_FINISH_REBOOTNOW "�ǣ�������������(&Y)"
  !define MUI_TEXT_FINISH_REBOOTLATER "�����Ժ���������������(&N)"
  !define MUI_TEXT_FINISH_RUN "���� $(^NameDA)(&R)"
  !define MUI_TEXT_FINISH_SHOWREADME "��ʾ�������ļ���(&M)"
  
  !define MUI_TEXT_STARTMENU_TITLE "ѡ�񡰿�ʼ�˵����ļ���"
  !define MUI_TEXT_STARTMENU_SUBTITLE "ѡ�񡰿�ʼ�˵����ļ��У����ڳ���Ŀ�ݷ�ʽ��"
  !define MUI_INNERTEXT_STARTMENU_TOP "ѡ�񡰿�ʼ�˵����ļ��У��Ա㴴������Ŀ�ݷ�ʽ����Ҳ�����������ƣ��������ļ��С�"
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "��Ҫ������ݷ�ʽ(&N)"
  
  !define MUI_TEXT_ABORTWARNING "��ȷʵҪ�˳���$(^Name)����װ����"
  

  !define MUI_UNTEXT_WELCOME_INFO_TITLE "��ӭʹ�á�$(^NameDA)��ж����"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "����򵼽�ȫ��ָ���㡰$(^NameDA)����ж�ؽ��̡�\r\n\r\n�ڿ�ʼж��֮ǰ��ȷ�ϡ�$(^NameDA)����δ���е��С�\r\n\r\n$_CLICK"
 
  !define MUI_UNTEXT_CONFIRM_TITLE "ж�� $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "����ļ����ж�ء�$(^NameDA)��"
  
  !define MUI_UNTEXT_LICENSE_TITLE "���֤Э��"
  !define MUI_UNTEXT_LICENSE_SUBTITLE "��ж�ء�$(^NameDA)��֮ǰ���������Ȩ���"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "��������Э���е�������� [��ͬ��(I)] ����ж�ء������ѡ�� [ȡ��(C)] ����װ���򽫻�رա�����Ҫ����Э�����ж�ء�$(^NameDA)����"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "��������Э���е���������·��Ĺ�ѡ�򡣱���Ҫ����Э�����ж�� $(^NameDA)��$_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "��������Э���е����ѡ���·���һ��ѡ�����Ҫ����Э�����ж�� $(^NameDA)��$_CLICK"
  
  !define MUI_UNTEXT_COMPONENTS_TITLE "ѡ�����"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "ѡ����$(^NameDA)����������Ҫж�صĹ��ܡ�"
  
  !define MUI_UNTEXT_DIRECTORY_TITLE "ѡ��ж��λ��" 
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "ѡ����$(^NameDA)��Ҫж�ص��ļ��С�"

  !define MUI_UNTEXT_UNINSTALLING_TITLE "����ж��"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "��$(^NameDA)������ж�أ���Ⱥ�..."
    
  !define MUI_UNTEXT_FINISH_TITLE "ж�������"
  !define MUI_UNTEXT_FINISH_SUBTITLE "ж���ѳɹ�����ɡ�"
  
  !define MUI_UNTEXT_ABORT_TITLE "ж������ֹ"
  !define MUI_UNTEXT_ABORT_SUBTITLE "ж�س���δ�ɹ�����ɡ�"
  
  !define MUI_UNTEXT_FINISH_INFO_TITLE "������ɡ�$(^NameDA)��ж����"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "��$(^NameDA)���Ѵ���ļ����ж�ء�\r\n\r\n���� [���] �ر�����򵼡�"
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "�������Ҫ�����������Ա���ɡ�$(^NameDA)����ж�ء�������Ҫ����������"

  !define MUI_UNTEXT_ABORTWARNING "��ȷʵҪ�˳���$(^Name)��ж����"  
  
!insertmacro MUI_LANGUAGEFILE_END