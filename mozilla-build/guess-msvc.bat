REM -*- Mode: fundamental; tab-width: 8; indent-tabs-mode: 1 -*-
@ECHO OFF

set CYGWIN=
if not defined MOZ_NO_RESET_PATH (
    set PATH=%SystemRoot%\System32;%SystemRoot%;%SystemRoot%\System32\Wbem
)

REM if DISPLAY is set, rxvt attempts to load libX11.dll and fails to start
REM (see mozilla bug 376828)
SET DISPLAY=

SET INCLUDE=
SET LIB=

SET WINCURVERKEY=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion
REG QUERY "%WINCURVERKEY%" /v "ProgramFilesDir (x86)" >nul 2>nul
if %ERRORLEVEL% EQU 0 (
  SET WIN64=1
) else (
  SET WIN64=0
)

if "%WIN64%" == "1" (
  SET MSVCROOTKEY=HKLM\SOFTWARE\Wow6432Node\Microsoft\VisualStudio
  SET MSVCEXPROOTKEY=HKLM\SOFTWARE\Wow6432Node\Microsoft\VCExpress
) else (
  SET MSVCROOTKEY=HKLM\SOFTWARE\Microsoft\VisualStudio
  SET MSVCEXPROOTKEY=HKLM\SOFTWARE\Microsoft\VCExpress
)

SET MSVC6KEY=%MSVCROOTKEY%\6.0\Setup\Microsoft Visual C++
SET MSVC71KEY=%MSVCROOTKEY%\7.1\Setup\VC
SET MSVC8KEY=%MSVCROOTKEY%\8.0\Setup\VC
SET MSVC8EXPRESSKEY=%MSVCEXPROOTKEY%\8.0\Setup\VC
SET MSVC9KEY=%MSVCROOTKEY%\9.0\Setup\VC
SET MSVC9EXPRESSKEY=%MSVCEXPROOTKEY%\9.0\Setup\VC

REM First see if we can find MSVC, then set the variable
REM NOTE: delims=<tab><space>
REM NOTE: run the initial REQ QUERY outside of the if() to set ERRORLEVEL correctly

REG QUERY "%MSVC6KEY%" /v ProductDir >nul 2>nul
if "%VC6DIR%"=="" (
  IF %ERRORLEVEL% EQU 0 (
    FOR /F "tokens=2* delims=	 " %%A IN ('REG QUERY "%MSVC6KEY%" /v ProductDir') DO SET VC6DIR=%%B
  )
)

REG QUERY "%MSVC71KEY%" /v ProductDir >nul 2>nul
if "%VC71DIR%"=="" (
  IF %ERRORLEVEL% EQU 0 (
    FOR /F "tokens=2* delims=	 " %%A IN ('REG QUERY "%MSVC71KEY%" /v ProductDir') DO SET VC71DIR=%%B
  )
)

REG QUERY "%MSVC8KEY%" /v ProductDir >nul 2>nul
if "%VC8DIR%"=="" (
  IF %ERRORLEVEL% EQU 0 (
    FOR /F "tokens=2* delims=	 " %%A IN ('REG QUERY "%MSVC8KEY%" /v ProductDir') DO SET VC8DIR=%%B
  )
)

REG QUERY "%MSVC8EXPRESSKEY%" /v ProductDir >nul 2>nul
if "%VC8EXPRESSDIR%"=="" (
  IF %ERRORLEVEL% EQU 0 (
    FOR /F "tokens=2* delims=	 " %%A IN ('REG QUERY "%MSVC8EXPRESSKEY%" /v ProductDir') DO SET VC8EXPRESSDIR=%%B
  )
)

REG QUERY "%MSVC9KEY%" /v ProductDir >nul 2>nul
if "%VC9DIR%"=="" (
  REM Newer SDKs (6.1, 7.0) install the VC9 compilers and set this key,
  REM but they're functionally equivalent to the VC9 Express compilers.
  IF %ERRORLEVEL% EQU 0 (
    FOR /F "tokens=2* delims=	 " %%A IN ('REG QUERY "%MSVC9KEY%" /v ProductDir') DO SET TEMPVC9DIR=%%B
  )
)

REM We'll double-check for a VC9 Pro install here per the comment above.
REG QUERY "%MSVCROOTKEY%\9.0\InstalledProducts\Microsoft Visual C++" >nul 2>nul
if NOT "%TEMPVC9DIR%"=="" (
  IF %ERRORLEVEL% EQU 0 (
    SET "VC9DIR=%TEMPVC9DIR%"
  ) ELSE (
    SET "VC9EXPRESSDIR=%TEMPVC9DIR%"
  )
)

REG QUERY "%MSVC9EXPRESSKEY%" /v ProductDir >nul 2>nul
if "%VC9EXPRESSDIR%"=="" (
  IF %ERRORLEVEL% EQU 0 (
    FOR /F "tokens=2* delims=	 " %%A IN ('REG QUERY "%MSVC9EXPRESSKEY%" /v ProductDir') DO SET VC9EXPRESSDIR=%%B
  )
)

REM Look for Installed SDKs:
SET SDKROOTKEY=HKLM\SOFTWARE\Microsoft\MicrosoftSDK\InstalledSDKs
SET SDK2003SP1KEY=%SDKROOTKEY%\8F9E5EF3-A9A5-491B-A889-C58EFFECE8B3
SET SDK2003SP2KEY=%SDKROOTKEY%\D2FF9F89-8AA2-4373-8A31-C838BF4DBBE1
SET SDK6KEY=HKLM\SOFTWARE\Microsoft\Microsoft SDKs\Windows\v6.0
REM 6.0A comes with Visual C++ 2008. If you have 6.0 installed, even
REM the express edition will update you to 6.0A
SET SDK6AKEY=HKLM\SOFTWARE\Microsoft\Microsoft SDKs\Windows\v6.0A
SET SDK61KEY=HKLM\SOFTWARE\Microsoft\Microsoft SDKs\Windows\v6.1
SET SDK7KEY=HKLM\SOFTWARE\Microsoft\Microsoft SDKs\Windows\v7.0

REM Just a base value to compare against
SET SDKVER=0
SET SDKMINORVER=0

REG QUERY "%SDK7KEY%" /v InstallationFolder >nul 2>nul
if "%SDKDIR%"=="" (
  IF %ERRORLEVEL% EQU 0 (
    FOR /F "tokens=2* usebackq delims=	 " %%A IN (`REG QUERY "%SDK7KEY%" /v InstallationFolder`) DO SET SDKDIR=%%B
    SET SDKVER=7
  )
)

REG QUERY "%SDK61KEY%" /v InstallationFolder >nul 2>nul
if "%SDKDIR%"=="" (
  IF %ERRORLEVEL% EQU 0 (
    FOR /F "tokens=2* usebackq delims=	 " %%A IN (`REG QUERY "%SDK61KEY%" /v InstallationFolder`) DO SET SDKDIR=%%B
    SET SDKVER=6
    SET SDKMINORVER=1
  )
)

REG QUERY "%SDK6AKEY%" /v InstallationFolder >nul 2>nul
if "%SDKDIR%"=="" (
  IF %ERRORLEVEL% EQU 0 (
    FOR /F "tokens=2* usebackq delims=	 " %%A IN (`REG QUERY "%SDK6AKEY%" /v InstallationFolder`) DO SET SDKDIR=%%B
    SET SDKVER=6
    REM insane, I know!
    SET SDKMINORVER=0A
  )
)

REG QUERY "%SDK6KEY%" /v InstallationFolder >nul 2>nul
if "%SDKDIR%"=="" (
  IF %ERRORLEVEL% EQU 0 (
    FOR /F "tokens=2* usebackq delims=	 " %%A IN (`REG QUERY "%SDK6KEY%" /v InstallationFolder`) DO SET SDKDIR=%%B
    SET SDKVER=6
  )
)

REM The Vista SDK (6.0 and 6.0A) ships with a VC8 Express install

if "%SDKVER%"=="6" (
  if "%VC8EXPRESSDIR%"=="" (
    SET VC8EXPRESSDIR=%SDKDIR%VC\
  )
)

REG QUERY "%SDK2003SP2KEY%" /v "Install Dir" >nul 2>nul
if "%PSDKDIR%"=="" (
  IF %ERRORLEVEL% EQU 0 (
    FOR /F "tokens=3* delims=	 " %%A IN ('REG QUERY "%SDK2003SP2KEY%" /v "Install Dir"') DO SET PSDKDIR=%%B
    REM arbitrary, but works for me
    SET PSDKVER=5
  )
)

REG QUERY "%SDK2003SP1KEY%" /v "Install Dir" >nul 2>nul
if "%PSDKDIR%"=="" (
  IF %ERRORLEVEL% EQU 0 (
    FOR /F "tokens=3* delims=	 " %%A IN ('REG QUERY "%SDK2003SP1KEY%" /v "Install Dir"') DO SET PSDKDIR=%%B
    SET PSDKVER=4
  )
)

if defined %VC6DIR% (ECHO Visual C++ 6 directory: %VC6DIR%)
if defined %VC71DIR% (ECHO Visual C++ 7.1 directory: %VC71DIR%)
if defined %VC8DIR% (ECHO Visual C++ 8 directory: %VC8DIR%)
if defined %VC8EXPRESSDIR% (ECHO Visual C++ 8 Express directory: %VC8EXPRESSDIR%)
if defined %VC9DIR% (ECHO Visual C++ 9 directory: %VC9DIR%)
if defined %VC9EXPRESSDIR% (ECHO Visual C++ 9 Express directory: %VC9EXPRESSDIR%)
if "%SDKDIR%"=="" (
    SET SDKDIR=%PSDKDIR%
    SET SDKVER=%PSDKVER%
) else (
    ECHO Windows SDK directory: %SDKDIR%
    ECHO Windows SDK version: %SDKVER%.%SDKMINORVER%
)
if not "%PSDKDIR%"=="" (
    ECHO Platform SDK directory: %PSDKDIR%
    ECHO Platform SDK version: %PSDKVER%
)
