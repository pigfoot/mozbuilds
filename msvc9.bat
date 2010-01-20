@echo off

SET PFBASEDIR=D:\mozbuilds

SET MOZ_MSVCVERSION=9
SET MOZBUILDDIR=%PFBASEDIR%\mozilla-build
SET MOZBUILDHOMEDIR=%PFBASEDIR%\home
SET MOZBUILDPFPATCHDIR=%PFBASEDIR%\pf-patches
SET MOZILLABUILD=%MOZBUILDDIR%\
echo "Mozilla tools directory: %MOZBUILDDIR%\"

REM Get MSVC paths
REM set SDKDIR=C:\Program Files\Microsoft SDKs\Windows\v6.1
REM set SDKVER=6
REM set SDKMINORVER=1
set SDKDIR=C:\Program Files\Microsoft SDKs\Windows\v7.0
set SDKVER=7
set SDKMINORVER=0
set VC9DIR=C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC

REM Use the moztools-static
set MOZ_TOOLS=%MOZBUILDDIR%\moztools

rem append moztools to PATH
SET PATH=%PATH%;%MOZ_TOOLS%\bin;%MOZBUILDPFPATCHDIR%\toolkit

call "%VC9DIR%\Bin\vcvars32.bat"

set PATH=%SDKDIR%\bin;%PATH%
set LIB=%SDKDIR%\lib;%LIB%;%MOZBUILDDIR\%atlthunk_compat

REM Microsoft SDK 6.1
set INCLUDE=%SDKDIR%\include;%SDKDIR%\include\atl;%INCLUDE%

SET PATH=%PATH%;%MOZILLABUILD%msys\bin;%MOZILLABUILD%msys\local\bin;%MOZILLABUILD%python25;%MOZILLABUILD%info-zip

set HOME=%MOZBUILDHOMEDIR%
%MOZILLABUILD%\msys\bin\bash --login -i
