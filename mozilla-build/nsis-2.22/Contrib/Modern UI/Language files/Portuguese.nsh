;NSIS Modern User Interface - Language File
;Compatible with Modern UI 1.68

;Language: Portuguese (2070)
;By Ramon <ramon@netcabo.pt>

;--------------------------------

!insertmacro MUI_LANGUAGEFILE_BEGIN "Portuguese"

  !define MUI_LANGNAME "Portugu�s" ;Use only ASCII characters (if this is not possible, use the English name)
  
  !define MUI_TEXT_WELCOME_INFO_TITLE "Bem vindo ao Assistente de Instala��o do $(^NameDA)"
  !define MUI_TEXT_WELCOME_INFO_TEXT "Este assistente ajud�-lo-� durante a instala��o do $(^NameDA).\r\n\r\n� recomendado que feche todas as outras aplica��es antes de iniciar a Instala��o. Isto permitir� que o Instalador actualize ficheiros relacionados com o sistema sem necessidade de reiniciar o computador.\r\n\r\n$_CLICK"
  
  !define MUI_TEXT_LICENSE_TITLE "Contrato de Licen�a"
  !define MUI_TEXT_LICENSE_SUBTITLE "Por favor, verifique os termos da licen�a antes de instalar o $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_TOP "Tecle Page Down para ver o restante da licen�a."
  !define MUI_INNERTEXT_LICENSE_BOTTOM "Se aceitar os termos da licen�a, clique em 'Aceito' para continuar. Dever� aceitar o contrato para instalar o $(^NameDA)."
  !define MUI_INNERTEXT_LICENSE_BOTTOM_CHECKBOX "Se aceitar os termos da licen�a, clique na caixa de sele��o abaixo. Dever� aceitar o contrato para instalar o $(^NameDA). $_CLICK"
  !define MUI_INNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Se aceitar os termos da licen�a, selecione a primeira op��o abaixo. Voc� deve aceitar o contrato para instalar o $(^NameDA). $_CLICK"

  !define MUI_TEXT_COMPONENTS_TITLE "Escolha de Componentes"
  !define MUI_TEXT_COMPONENTS_SUBTITLE "Escolha quais as caracter�sticas do $(^NameDA) que deseja instalar."
  !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_TITLE "Descri��o"
!ifndef NSIS_CONFIG_COMPONENTPAGE_ALTERNATIVE
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Posicione o rato sobre um componente para ver a sua descri��o."
  !else
    !define MUI_INNERTEXT_COMPONENTS_DESCRIPTION_INFO "Seleccione um componente para ver a sua descri��o."
  !endif
  
  !define MUI_TEXT_DIRECTORY_TITLE "Escolha do Local da Instala��o"
  !define MUI_TEXT_DIRECTORY_SUBTITLE "Escolha a pasta na qual deseja instalar o $(^NameDA)."

  !define MUI_TEXT_INSTALLING_TITLE "Instalando"
  !define MUI_TEXT_INSTALLING_SUBTITLE "Por favor, aguarde enquanto o $(^NameDA) est� sendo instalado."
  
  !define MUI_TEXT_FINISH_TITLE "Instala��o Completa"
  !define MUI_TEXT_FINISH_SUBTITLE "A instala��o foi conclu�da com sucesso."
  
  !define MUI_TEXT_ABORT_TITLE "Instala��o Abortada"
  !define MUI_TEXT_ABORT_SUBTITLE "A instala��o n�o foi conclu�da com sucesso."

  !define MUI_BUTTONTEXT_FINISH "&Terminar"
  !define MUI_TEXT_FINISH_INFO_TITLE "Concluindo o Assistente de Instala��o do $(^NameDA)"
  !define MUI_TEXT_FINISH_INFO_TEXT "$(^NameDA) foi instalado no seu computador.\r\n\r\nClique em Terminar para fechar este assistente."
  !define MUI_TEXT_FINISH_INFO_REBOOT "O seu computador deve ser reiniciado para conclu�r a instala��o do $(^NameDA). Deseja reiniciar agora?"
  !define MUI_TEXT_FINISH_REBOOTNOW "Reiniciar Agora"
  !define MUI_TEXT_FINISH_REBOOTLATER "Eu quero reiniciar manualmente depois"
  !define MUI_TEXT_FINISH_RUN "&Executar $(^NameDA)"
  !define MUI_TEXT_FINISH_SHOWREADME "&Mostrar Leiame"
  
  !define MUI_TEXT_STARTMENU_TITLE "Escolha uma Pasta do Menu Iniciar"
  !define MUI_TEXT_STARTMENU_SUBTITLE "Escolha uma pasta do Menu Iniciar para os atalhos do programa."
  !define MUI_INNERTEXT_STARTMENU_TOP "Selecione uma pasta do Menu Iniciar em que deseja criar os atalhos do programa. Voc� pode tamb�m digitar um nome para criar uma nova pasta. "
  !define MUI_INNERTEXT_STARTMENU_CHECKBOX "N�o criar atalhos"  
  
  !define MUI_TEXT_ABORTWARNING "Deseja realmente cancelar a instala��o do $(^Name)?"


  !define MUI_UNTEXT_WELCOME_INFO_TITLE "Bem vindo ao Assistente de desinstala��o do $(^NameDA)"
  !define MUI_UNTEXT_WELCOME_INFO_TEXT "Este assistente ajud�-lo-� durante a desinstala��o do $(^NameDA).\r\n\r\nAntes de iniciar a desinstala��o, certifique-se de que o $(^NameDA) n�o est� em execu��o.\r\n\r\n$_CLICK"
  
  !define MUI_UNTEXT_CONFIRM_TITLE "Desinstalar $(^NameDA)"
  !define MUI_UNTEXT_CONFIRM_SUBTITLE "Remover o $(^NameDA) do seu computador."
 
  !define MUI_UNTEXT_LICENSE_TITLE "Contrato de Licen�a"
  !define MUI_UNTEXT_LICENSE_SUBTITLE "Por favor, verifique os termos da licen�a antes de desinstalar o $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM  "Se aceitar os termos da licen�a, clique em 'Aceito' para continuar. Dever� aceitar o contrato para desinstalar o $(^NameDA)."
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_CHECKBOX "Se aceitar os termos da licen�a, clique na caixa de sele��o abaixo. Dever� aceitar o contrato para desinstalar o $(^NameDA). $_CLICK"
  !define MUI_UNINNERTEXT_LICENSE_BOTTOM_RADIOBUTTONS "Se aceitar os termos da licen�a, selecione a primeira op��o abaixo. Voc� deve aceitar o contrato para desinstalar o $(^NameDA). $_CLICK"
    
  !define MUI_UNTEXT_COMPONENTS_TITLE "Escolher Componentes"
  !define MUI_UNTEXT_COMPONENTS_SUBTITLE "Escolha quais as caracter�sticas do $(^NameDA) que deseja desinstalar."
    
  !define MUI_UNTEXT_DIRECTORY_TITLE "Escolha o Local de desinstala��o"
  !define MUI_UNTEXT_DIRECTORY_SUBTITLE "Escolha a pasta de onde pretende desinstalar o $(^NameDA)."

  !define MUI_UNTEXT_UNINSTALLING_TITLE "Desinstalando"
  !define MUI_UNTEXT_UNINSTALLING_SUBTITLE "Por favor, aguarde enquanto o $(^NameDA) est� sendo desinstalado."
  
  !define MUI_UNTEXT_FINISH_TITLE "Desinstala��o Completa"
  !define MUI_UNTEXT_FINISH_SUBTITLE "A desinstala��o foi conclu�da com sucesso."
  
  !define MUI_UNTEXT_ABORT_TITLE "Desinstala��o Abortada"
  !define MUI_UNTEXT_ABORT_SUBTITLE "A desinstala��o n�o foi conclu�da com sucesso"

  !define MUI_UNTEXT_FINISH_INFO_TITLE "Conclu�ndo o assistente de desisntala��o do $(^NameDA)"
  !define MUI_UNTEXT_FINISH_INFO_TEXT "$(^NameDA) foi removido do seu computador.\r\n\r\nClique em Terminar para fechar este assistente."
  !define MUI_UNTEXT_FINISH_INFO_REBOOT "O seu computador deve ser reiniciado para conclu�r a desinstala��o do $(^NameDA). Deseja reiniciar agora?"
  
  !define MUI_UNTEXT_ABORTWARNING "Deseja realmente cancelar a desinstala��o do $(^Name)?"

!insertmacro MUI_LANGUAGEFILE_END