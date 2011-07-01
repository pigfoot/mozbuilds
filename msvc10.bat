@echo off

SET PFBASEDIR=D:\Descartes

SET MOZ_MSVCVERSION=10
SET MOZBUILDDIR=%PFBASEDIR%\mozilla-build
SET MOZBUILDHOMEDIR=%PFBASEDIR%\home
SET MOZBUILDPFPATCHDIR=%PFBASEDIR%\pf-patches
SET MOZILLABUILD=%MOZBUILDDIR%\
echo "Mozilla tools directory: %MOZBUILDDIR%\"

REM Get MSVC paths
call "%MOZBUILDDIR%\guess-msvc.bat"

REM Use the moztools-static
set MOZ_TOOLS=%MOZBUILDDIR%\moztools

rem append moztools to PATH
SET PATH=%PATH%;%MOZ_TOOLS%\bin;%MOZBUILDPFPATCHDIR%\toolkit

call "%VC10DIR%\Bin\vcvars32.bat"

set PATH=%SDKDIR%\bin;%PATH%
set LIB=%SDKDIR%\lib;%LIB%;%MOZBUILDDIR\%atlthunk_compat

REM Microsoft SDK 7.0
set INCLUDE=%SDKDIR%\include;%SDKDIR%\include\atl;%INCLUDE%

SET PATH=%PATH%;%MOZILLABUILD%msys\bin;%MOZILLABUILD%msys\local\bin
SET PATH=%PATH%;C:\Git\bin

set HOME=%MOZBUILDHOMEDIR%
%MOZILLABUILD%\msys\bin\bash --login -i
