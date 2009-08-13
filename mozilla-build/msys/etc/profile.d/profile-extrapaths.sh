#!/bin/sh

if test -n "$MOZILLABUILD"; then
    MSYS_MOZBUILD=$(cd "$MOZILLABUILD" && pwd)
    PATH="/local/bin:$MSYS_MOZBUILD/wget:$MSYS_MOZBUILD/7zip:$MSYS_MOZBUILD/blat261/full:$MSYS_MOZBUILD/python25:$MSYS_MOZBUILD/svn-win32-1.4.2/bin:$MSYS_MOZBUILD/upx203w:$MSYS_MOZBUILD/info-zip:$MSYS_MOZBUILD/nsis-2.22:$MSYS_MOZBUILD/nsis-2.33u:$MSYS_MOZBUILD/hg:$MSYS_MOZBUILD/python25/Scripts:$PATH"
    EDITOR=vim
    CVS_RSH=ssh
    export PATH EDITOR CVS_RSH
fi
