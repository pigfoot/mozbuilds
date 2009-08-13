@echo off

SET PFBASEDIR=D:\mozbuilds

SET MOZ_MSVCVERSION=8
SET MOZBUILDDIR=%PFBASEDIR%\mozilla-build
SET MOZBUILDHOMEDIR=%PFBASEDIR%\home
SET MOZBUILDPFPATCHDIR=%PFBASEDIR%\pf-patches
SET MOZILLABUILD=%MOZBUILDDIR%\
echo "Mozilla tools directory: %MOZBUILDDIR%\"

REM Get MSVC paths
set PSDKDIR=C:\Program Files\Microsoft Platform SDK for Windows Server 2003 R2
set PSDKVER=5
set SDKDIR=C:\Program Files\Microsoft SDKs\Windows\v6.0A
set SDKVER=6
set SDKMINORVER=0
set VC8DIR=C:\Program Files\Microsoft Visual Studio 8\VC

REM Use the moztools-static
set MOZ_TOOLS=%MOZBUILDDIR%\moztools

rem append moztools to PATH
SET PATH=%PATH%;%MOZ_TOOLS%\bin

call "%VC8DIR%\Bin\vcvars32.bat"

set PATH=%SDKDIR%\bin;%PATH%
set LIB=%SDKDIR%\lib;%LIB%;%MOZBUILDDIR%\atlthunk_compat

REM Microsoft SDK 6.0
set INCLUDE=%SDKDIR%\include;%PSDKDIR%\include\atl;%PSDKDIR%\include;%INCLUDE%

SET PATH=%PATH%;%MOZILLABUILD%msys\bin;%MOZILLABUILD%msys\local\bin;%MOZILLABUILD%python25;%MOZILLABUILD%info-zip

set HOME=%MOZBUILDHOMEDIR%
%MOZILLABUILD%\msys\bin\bash --login -i
