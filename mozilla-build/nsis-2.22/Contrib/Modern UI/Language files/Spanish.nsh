;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Spanish (1034)
;By MoNKi & Joel

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Spanish"

  !define MUI_LANGNAME "Espa�ol" ;Use only ASCII characters (if this is not possible, use the English name)

  !define MUI_TEXT_WELCOME_INFO_TITLE "Bienvenido al Asistente de Instalaci�n de $(^NameDA)"
  !define MUI_TEXT_WELCOME_INFO_TEXT "Este programa instalar� $(^NameDA) en su ordenador.\r\n\r\nSe recomienda que cierre todas las dem�s aplicaciones antes de iniciar la instalaci�n. Esto har� posible actualizar archivos relacionados con el sistema sin tener que reiniciar su ordenador.\r\n\r\n$_CLICK"

  !define MUI_TEXT_LICENSE_TITLE "Acuerdo de licencia"
  !define MUI_TEXT_LICENSE_SUBTITLE "Por favor revise los t�rminos de la licencia antes de instalar $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_TOP "Presione Avanzar P�gina para ver el resto del acuerdo."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Si acepta todos los t�rminos del acuerdo, seleccione Acepto para continuar. Debe aceptar el acuerdo para instalar $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Si acepta los t�rminos del acuerdo, marque abajo la casilla. Debe aceptar los t�rminos para instalar $(^NameDA). $_CLICK" 
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Si acepta los t�rminos del acuerdo, seleccione abajo la primera opci�n. Debe aceptar los t�rminos para instalar $(^NameDA). $_CLICK" 
  
  !define MUI_TEXT_COMPONENTS_TITLE "Selecci�n de componentes"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Seleccione qu� caracter�sticas de $(^NameDA) desea instalar."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Descripci�n"
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Sit�e el rat�n encima de un componente para ver su descripci�n."
  
  !define MUI_TEXT_DIRECTORY_TITLE "Elegir lugar de instalaci�n"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Elija el directorio para instalar $(^NameDA)."
  
  !define MUI_TEXT_INSTALLING_TITLE "Instalando"
  !define MUI_TEXT_INSTALLING_SUBTITLE "Por favor espere mientras $(^NameDA) se instala."
  
  !define MUI_TEXT_FINISH_TITLE "Instalaci�n Completada"
  !define MUI_TEXT_FINISH_SUBTITLE "La instalaci�n se ha completado correctamente."

  !define MUI_TEXT_ABORT_TITLE "Instalaci�n Anulada"
  !define MUI_TEXT_ABORT_SUBTITLE "La instalaci�n no se complet� correctamente."

  !define MUI_BUTTONTEXT_FINISH "&Terminar"
  !define MUI_TEXT_FINISH_INFO_TITLE "Completando el Asistente de Instalaci�n de $(^NameDA)"
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) ha sido instalado en su sistema.\r\n\r\nPresione Terminar para cerrar este asistente."
  !define MUI_TEXT_FINISH_INFO_REBOOT "Su sistema debe ser reiniciado para que pueda completarse la instalaci�n de $(^NameDA). �Desea reiniciar ahora?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Reiniciar ahora"
  !define MUI_TEXT_FINISH_REBOOTLATER "Deseo reiniciar manualmente m�s tarde"
  !define MUI_TEXT_FINISH_RUN "&Ejecutar $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "&Ver L�ame"

  !define MUI_TEXT_STARTMENU_TITLE "Elegir Carpeta del Men� Inicio"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Elija una Carpeta del Men� Inicio para los accesos directos de $(^NameDA)."
  !define MUI_INNERTEXT_STARTMENU_TOP "Seleccione una carpeta del Men� Inicio en la que quiera crear los accesos directos del programa. Tambi�n puede introducir un nombre para crear una nueva carpeta."
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "No crear accesos directos"
  
  !define MUI_TEXT_ABORTWARNING "�Est� seguro de que desea salir de la instalaci�n de $(^Name)?"


  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Bienvenido al Asistente de Desinstalaci�n de $(^NameDA)"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Este asistente le guiar� durante la desinstalaci�n de $(^NameDA).\r\n\r\nAntes de comenzar la desinstalaci�n, aseg�rese de que $(^NameDA) no se est� ejecutando.\r\n\r\n$_CLICK"
  
  !define MUI_UNTEXT_CONFIRM_TITLE "Desinstalar $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Elimina $(^NameDA) de su sistema."

  !define MUI_UNTEXT_LICENSE_TITLE "Acuerdo de licencia"
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Por favor revise los t�rminos de la licencia antes de desinstalar $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM "Si acepta todos los t�rminos del acuerdo, seleccione Acepto para continuar. Debe aceptar el acuerdo para desinstalar $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Si acepta los t�rminos del acuerdo, marque abajo la casilla. Debe aceptar los t�rminos para desinstalar $(^NameDA). $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Si acepta los t�rminos del acuerdo, seleccione abajo la primera opci�n. Debe aceptar los t�rminos para desinstalar $(^NameDA). $_CLICK"

  !define MUI_UNTEXT_COMPONENTS_TITLE "Selecci�n de componentes"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Seleccione qu� caracter�sticas de $(^NameDA) desea desinstalar."

  !define MUI_UNTEXT_DIRECTORY_TITLE "Elegir lugar de desinstalaci�n"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Elija el directorio desde el cual se desinstalar� $(^NameDA)."
     
  !define MUI_UNTEXT_UNINSTALLING_TITLE "Desinstalando"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Por favor espere mientras $(^NameDA) se desinstala."
  
  !define MUI_UNTEXT_FINISH_TITLE "Desinstalaci�n Completada"
  !define MUI_UNTEXT_FINISH_SUBTITLE "La desinstalaci�n se ha completado correctamente."

  !define MUI_UNTEXT_ABORT_TITLE "Desinstalaci�n Anulada"
  !define MUI_UNTEXT_ABORT_SUBTITLE "La desinstalaci�n no se complet� correctamente."

  !define MUI_UNTEXT_FINISH_INFO_TITLE "Completando el Asistente de Desinstalaci�n de $(^NameDA)"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) ha sido desinstalado de su sistema.\r\n\r\nPresione Terminar para cerrar este asistente."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "Su ordenador debe ser reiniciado para completar la desinstalaci�n de $(^NameDA). �Desea reiniciar ahora?"
  !define MUI_UNTEXT_ABORTWARNING "�Est� seguro de que desea salir de la desinstalaci�n de $(^Name)?"

!insertmacro MUI_LANGUAGEFILE_END