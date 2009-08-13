;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Catalan (1027)
;By falanko, corrections by Toni Hermoso Pulido

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Catalan"

  !define MUI_LANGNAME "Catal�" ;Use only ASCII characters (if this is not possible, use the English name)

  !define MUI_TEXT_WELCOME_INFO_TITLE "Benvinguts a l'auxiliar d'instal�laci� de l'aplicaci� $(^NameDA)"
  !define MUI_TEXT_WELCOME_INFO_TEXT "Aquest auxiliar us guiar� durant el proc�s d'instal�laci� de l'aplicaci� $(^NameDA).\r\n\r\nEs recomana tancar la resta d'aplicacions abans de comen�ar la instal�laci�. Aix� permetr� al programa d'instal�aci� actualitzar fitxers del sistema rellevants sense haver de reiniciar l'ordinador.\r\n\r\n$_CLICK"

  !define MUI_TEXT_LICENSE_TITLE "Acord de Llic�ncia"
  !define MUI_TEXT_LICENSE_SUBTITLE "Reviseu els termes de la llic�ncia abans d'instal�lar l'aplicaci� $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_TOP "Premeu AvP�g per a veure la resta de l'acord."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Si accepteu tots els termes de l'acord, premeu Hi estic d'acord per a continuar. Heu d'acceptar l'acord per a poder instal�lar l'aplicaci� $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Si accepteu tots els termes de l'acord, activeu la casella de sota. Heu d'acceptar l'acord per poder instal�lar l'aplicaci� $(^NameDA). $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Si accepteu tots els termes de l'acord, seleccioneu la primera opci� de sota. Heu d'acceptar l'acord per a poder instal�lar $(^NameDA). $_CLICK"

  !define MUI_TEXT_COMPONENTS_TITLE "Selecci� de components"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Seleccioneu quines caracter�stiques de l'aplicaci� $(^NameDA) desitgeu instal�lar."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Descripci�"
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Situeu el ratol� damunt d'un component per a veure'n la descripci�."

  !define MUI_TEXT_DIRECTORY_TITLE "Trieu una ubicaci� d'instal�laci�"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Trieu la carpeta on instal�lar-hi l'aplicaci� $(^NameDA)."

  !define MUI_TEXT_INSTALLING_TITLE "S'est� instal�lant"
  !define MUI_TEXT_INSTALLING_SUBTITLE "Si us plau, espereu mentre l'aplicaci� $(^NameDA) s'instal�la."

  !define MUI_TEXT_FINISH_TITLE "S'ha acabat la instal�laci�"
  !define MUI_TEXT_FINISH_SUBTITLE "La instal�laci� ha acabat correctament."

  !define MUI_TEXT_ABORT_TITLE "S'ha abandonat la instal�laci�"
  !define MUI_TEXT_ABORT_SUBTITLE "La instal�laci� no ha acabat correctament."

  !define MUI_BUTTONTEXT_FINISH "&Finalitza"
  !define MUI_TEXT_FINISH_INFO_TITLE "S'est� acabant l'auxiliar d'instal�laci� de l'aplicaci� $(^NameDA)"
  !define MUI_TEXT_FINISH_INFO_TEXT "L'aplicaci� $(^NameDA) s'ha instal�lat a l'ordinador.\r\n\r\nFeu clic a Finalitza per a tancar aquest auxiliar."
  !define MUI_TEXT_FINISH_INFO_REBOOT "Cal reiniciar l'ordinador perqu� pugui acabar-se la instal�laci� de l'aplicaci� $(^NameDA). Voleu reiniciar-lo ara?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Reinicia ara"
  !define MUI_TEXT_FINISH_REBOOTLATER "Reinicia m�s tard manualment"
  !define MUI_TEXT_FINISH_RUN "Executa l'aplicaci� $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "&Mostra el Llegeix-me"

  !define MUI_TEXT_STARTMENU_TITLE "Tria la carpeta del men� Inicia"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Tria una carpeta del men� Inicia per a les dreceres de l'aplicaci� $(^NameDA)."
  !define MUI_INNERTEXT_STARTMENU_TOP "Seleccioneu la carpeta del Men� Inicia en la que hi vulgueu crear les dreceres del programa. Podeu introduir-hi un altre nom si voleu crear una carpeta nova."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "No cre�s les dreceres"

  !define MUI_TEXT_ABORTWARNING "Esteu segur que voleu sortir del programa d'instal�laci� de l'aplicaci� $(^Name)?"


  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Benvinguts a l'auxiliar de desinstal�laci� de l'aplicaci� $(^NameDA)"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Aquest auxiliar us guiar� a trav�s de la desinstal�laci� de l'aplicaci� $(^NameDA).\r\n\rAbans de comen�ar la desinstal�laci�, assegureu-vos que l'aplicaci� $(^NameDA) no s'est� executant.\r\n\r\n$_CLICK"

  !define MUI_UNTEXT_CONFIRM_TITLE "Desinstal�la l'aplicaci� $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Suprimeix l'aplicaci� $(^NameDA) de l'ordinador."

  !define MUI_UNTEXT_LICENSE_TITLE "Acord de llic�ncia"
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Reviseu els termes de la llic�ncia abans de desinstal�lar l'aplicaci� $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Si accepteu tots els termes de l'acord, premeu Hi estic d'Acord per a continuar. Heu d'acceptar l'acord per a poder desinstal�lar l'aplicaci� $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Si accepteu tots els termes de l'acord, activeu la casella de sota. Heu d'acceptar l'acord per a poder desinstal�lar l'aplicaci� $(^NameDA). $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Si accepteu tots els termes de l'acord, seleccioneu la primera opci� de sota. Heu d'acceptar l'acord per a poder desinstal�lar l'aplicaci� $(^NameDA). $_CLICK"

  !define MUI_UNTEXT_COMPONENTS_TITLE "Selecci� de components"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Seleccioneu quines caracter�stiques de l'aplicaci� $(^NameDA) desitgeu desinstal�lar."

  !define MUI_UNTEXT_DIRECTORY_TITLE "Trieu la ubicaci� de desinstal�laci�"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Trieu la carpeta d'on desinstal�lar l'aplicaci� $(^NameDA)."

  !define MUI_UNTEXT_UNINSTALLING_TITLE "S'est� desinstal�lant"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Si us plau, espereu mentre l'aplicaci� $(^NameDA) es desinstal�la."

  !define MUI_UNTEXT_FINISH_TITLE "S'ha acabat la desinstal�laci�"
  !define MUI_UNTEXT_FINISH_SUBTITLE "La desinstal�laci� s'ha realitzat correctament."

  !define MUI_UNTEXT_ABORT_TITLE "S'ha abandonat la desinstal�laci�"
  !define MUI_UNTEXT_ABORT_SUBTITLE "La desinstal�laci� no ha acabat correctament."

  !define MUI_UNTEXT_FINISH_INFO_TITLE "S'est� acabant l'auxiliar de desinstal�laci� de l'aplicaci� $(^NameDA)."
  !define MUI_UNTEXT_FINISH_INFO_TEXT "L'aplicaci� $(^NameDA) s'ha desinstal�lat de l'ordinador.\r\n\r\nFeu clic a Finalitza per a tancar aquest auxiliar."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "Cal reiniciar l'ordinador perqu� pugui acabar-se la desinstal�laci� de l'aplicaci� $(^NameDA). Voleu reiniciar-lo ara?"

  !define MUI_UNTEXT_ABORTWARNING "Esteu segur que voleu sortir del programa de desinstal�laci� de l'aplicaci� $(^Name)?"

!insertmacro MUI_LANGUAGEFILE_END
