#!/usr/bin/env python
# -*- coding: UTF-8 -*-

"""
    Copyright (c) 2009 by pigfoot <pigfoot@gmail.com>
    All rights reserved, see COPYING for details.

    o Author: pigfoot <pigfoot@gmail.com>
    o History: Initial version.

    Mozilla source building program.

    $Id$
"""

Filelists = """
 
## profile
mozilla/browser/app/profile/firefox.js
mozilla/mail/app/profile/all-thunderbird.js

## branding
mozilla/other-licenses/branding/firefox/firefox.ico
mozilla/other-licenses/branding/firefox/content/about.png
mozilla/other-licenses/branding/firefox/content/aboutCredits.png
mozilla/browser/locales/en-US/chrome/branding/brand.dtd
mozilla/browser/locales/en-US/chrome/branding/brand.properties
mozilla/other-licenses/branding/firefox/locales/en-US/brand.dtd
mozilla/other-licenses/branding/firefox/locales/en-US/brand.properties

## updater
mozilla/modules/libbz2/src/Makefile.in
mozilla/modules/libmar/src/Makefile.in
mozilla/modules/libmar/tool/Makefile.in
mozilla/browser/app/firefox.exe.manifest
mozilla/toolkit/mozapps/update/src/updater/Makefile.in

## manifest
mozilla/toolkit/mozapps/update/src/updater/updater.exe.manifest
mozilla/toolkit/crashreporter/client/crashreporter.exe.manifest

## jemalloc
mozilla/memory/jemalloc/Makefile.in

## l10n
l10n/fr/other-licenses/branding/firefox/brand.dtd
l10n/fr/other-licenses/branding/firefox/brand.properties
l10n/de/other-licenses/branding/firefox/brand.dtd
l10n/de/other-licenses/branding/firefox/brand.properties
l10n/ja/other-licenses/branding/firefox/brand.dtd
l10n/ja/other-licenses/branding/firefox/brand.properties
l10n/zh-CN/other-licenses/branding/firefox/brand.dtd
l10n/zh-CN/other-licenses/branding/firefox/brand.properties
l10n/zh-TW/other-licenses/branding/firefox/brand.dtd
l10n/zh-TW/other-licenses/branding/firefox/brand.properties
"""

import os

class MainImpl:
    def __init__ (self, bBackup):   
        self.fileList = [ line.strip() for line in Filelists.split('\n') if line.strip() != '' and line.strip()[0] != '#' ]
        self.bBackup  = bBackup

    def run (self):
        import shutil

        SrcExt = ''
        DstExt = ''
        if self.bBackup:
            DstExt = '.BAK'
        else:
            SrcExt = '.BAK'

        for file in self.fileList:
            if (not (os.path.exists(file + SrcExt))):
                print 'Warning: [%s] does not exist!' % (file + SrcExt)
            else:
                shutil.copy2 (file + SrcExt, file + DstExt)
#               print '[%s] -> [%s]' % (file + SrcExt, file + file + DstExt)

# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

def usage(szProg):
    print ('Usage: %s [backup|restore]\n' % szProg)

# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

if __name__ == '__main__':

    import sys

    if (len(sys.argv) != 2):
        sys.exit( usage(sys.argv[0]) )

    bBackup = False

    if (sys.argv[1].lower() == 'backup'):
        bBackup = True
    elif (sys.argv[1].lower() == 'restore'):
        bBackup = False
    else:
        sys.exit( usage(sys.argv[0]) )

    try:
        main = MainImpl(bBackup)
        main.run()
    except KeyboardInterrupt:
        exit(0)

# vim:ts=4:sw=4:sta:noet:sts=4:ai:nowrap
