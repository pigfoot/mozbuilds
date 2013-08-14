@echo off

SET PFBASEDIR=%~dp0

SET MOZ_MSVCVERSION=11
SET MOZBUILDDIR=%PFBASEDIR%mozilla-build
SET MOZBUILDHOMEDIR=%PFBASEDIR%home
SET MOZBUILDPFPATCHDIR=%PFBASEDIR%pf-patches
SET MOZILLABUILD=%MOZBUILDDIR%\
echo "Mozilla tools directory: %MOZBUILDDIR%\"

REM Get MSVC paths
call "%MOZBUILDDIR%\guess-msvc.bat"

REM Use the "new" moztools-static
set MOZ_TOOLS=%MOZBUILDDIR%\moztools

rem append moztools to PATH
SET PATH=%PATH%;%MOZ_TOOLS%\bin;%MOZBUILDPFPATCHDIR%\toolkit

call "%VC11DIR%\bin\vcvars32.bat"

SET PATH=%PATH%;%MOZILLABUILD%msys\bin;%MOZILLABUILD%msys\local\bin
SET PATH=%PATH%;C:\Utility\Git\bin

set HOME=%MOZBUILDHOMEDIR%
"%MOZILLABUILD%\msys\bin\bash" --login -i
