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

import sys, string

class MozGenerator:

    def __init__(self):
        # Zero all the counters
        # project = 0       -> uninit
        # project = 1       -> fx
        # project = 2       -> tb
        # project = 3       -> sm
        #
        # arch = 0          -> P0: G7-SSE
        # arch = 1          -> P1: G6-MMX
        # arch = 2          -> P2: G6-SSE
        # arch = 3          -> P3: G7-SSE2
        #
        # locale = 0        -> uninit
        # locale = 1        -> en_US
        # locale = 2        -> zh_TW
        # locale = 3        -> zh_CN
        # locale = 4        -> ja
        # locale = 5        -> de
        # locale = 6        -> hu
        # locale = 7        -> nl (dutch)
        # locale = 8        -> fr (dutch)
        # locale = 9        -> it
        # locale = 10       -> ru
        #
        # nightly = 0       -> uninit
        # nightly = 1       -> nightly
        # nightly = 2       -> release
        #
        self.project=0 ; self.arch=0 ; self.mozlocale=0 ; self.nightly=0

    def loadConfig(self, project, arch, mozlocale, nightly):
        # Comment me
        _project = str(project).lower();
        _arch = str(arch).lower();
        _mozlocale = str(mozlocale).lower();
        _nightly = str(nightly).lower();

        if _project == 'fx':
            self.project=1
        elif _project == 'tb':
            self.project=2
        elif _project == 'sm':
            self.project=3
        else:
            print ('<project> must be fx, tb or sm!')
            sys.exit(0)

        if _arch == 'p0':
            self.arch=0
        elif _arch == 'p1':
            self.arch=1
        elif _arch == 'p2':
            self.arch=2
        elif _arch == 'p3':
            self.arch=3
        else:
            print ('<arch> must be p0, p1, p2, or p3!')
            sys.exit(0)

        if _mozlocale == 'en_us':
            self.mozlocale=1
        elif _mozlocale == 'zh_tw':
            self.mozlocale=2
        elif _mozlocale == 'zh_cn':
            self.mozlocale=3
        elif _mozlocale == 'ja':
            self.mozlocale=4
        elif _mozlocale == 'de':
            self.mozlocale=5
        elif _mozlocale == 'hu':
            self.mozlocale=6
        elif _mozlocale == 'nl':
            self.mozlocale=7
        elif _mozlocale == 'fr':
            self.mozlocale=8
        elif _mozlocale == 'it':
            self.mozlocale=9
        elif _mozlocale == 'ru':
            self.mozlocale=10
        else:
            print ('<locale> must be en_US, zh_TW, zh_CN, ja, de, hu, nl, fr, it or ru!')
            sys.exit(0)

        if _nightly == 'nightly':
            self.nightly=1
        elif _nightly == 'release':
            self.nightly=2
        else:
            print ('<nightly> must be "nightly" or "release"!')
            sys.exit(0)

    def generate(self):
        # Comment me
        print """\

"""

        if (self.project != 3):
            if (self.project == 1):
                print '. $topsrcdir/browser/config/mozconfig'
            elif (self.project == 2):
                print '. $topsrcdir/mail/config/mozconfig'
    
        print """
mk_add_options 'PROFILE_GEN_SCRIPT=$(PYTHON) $(OBJDIR)/_profile/pgo/profileserver.py'

##
## CPU Optimization
##"""
        if (self.arch == 0):
            print '#ac_add_options --enable-optimize="-Ox -GLAs -fp:fast -GS-"'
            print '#ac_add_options --enable-optimize="-Ox -GLAs -arch:SSE -fp:fast -GS-"'
            print 'ac_add_options --enable-optimize="-Ox -GLAs -arch:SSE -fp:fast -GS-"'
            print '#ac_add_options --enable-optimize="-Ox -GLAs -arch:SSE2 -fp:fast -GS-"'
        elif (self.arch == 1):
            print 'ac_add_options --enable-optimize="-Ox -GLAs -fp:fast -GS-"'
            print '#ac_add_options --enable-optimize="-Ox -GLAs -arch:SSE -fp:fast -GS-"'
            print '#ac_add_options --enable-optimize="-Ox -GLAs -arch:SSE -fp:fast -GS-"'
            print '#ac_add_options --enable-optimize="-Ox -GLAs -arch:SSE2 -fp:fast -GS-"'
        elif (self.arch == 2):
            print '#ac_add_options --enable-optimize="-Ox -GLAs -fp:fast -GS-"'
            print 'ac_add_options --enable-optimize="-O2 -GLAs -arch:SSE -fp:fast -GS-"'
            print '#ac_add_options --enable-optimize="-Ox -GLAs -arch:SSE -fp:fast -GS-"'
            print '#ac_add_options --enable-optimize="-Ox -GLAs -arch:SSE2 -fp:fast -GS-"'
        elif (self.arch == 3):
            print '#ac_add_options --enable-optimize="-Ox -GLAs -fp:fast -GS-"'
            print '#ac_add_options --enable-optimize="-Ox -GLAs -arch:SSE -fp:fast -GS-"'
            print '#ac_add_options --enable-optimize="-Ox -GLAs -arch:SSE -fp:fast -GS-"'
            print 'ac_add_options --enable-optimize="-Ox -GLAs -arch:SSE2 -fp:fast -GS-"'

        print """
#
# Localized Firefox
#
ac_add_options --with-l10n-base=../l10n"""
        if (self.mozlocale == 1):
            print '#ac_add_options --enable-ui-locale=zh-TW'
            print '#ac_add_options --enable-ui-locale=zh-CN'
            print '#ac_add_options --enable-ui-locale=ja'
            print '#ac_add_options --enable-ui-locale=de'
            print '#ac_add_options --enable-ui-locale=hu'
            print '#ac_add_options --enable-ui-locale=nl'
            print '#ac_add_options --enable-ui-locale=fr'
            print '#ac_add_options --enable-ui-locale=it'
            print '#ac_add_options --enable-ui-locale=ru'
        elif (self.mozlocale == 2):
            print 'ac_add_options --enable-ui-locale=zh-TW'
            print '#ac_add_options --enable-ui-locale=zh-CN'
            print '#ac_add_options --enable-ui-locale=ja'
            print '#ac_add_options --enable-ui-locale=de'
            print '#ac_add_options --enable-ui-locale=hu'
            print '#ac_add_options --enable-ui-locale=nl'
            print '#ac_add_options --enable-ui-locale=fr'
            print '#ac_add_options --enable-ui-locale=it'
            print '#ac_add_options --enable-ui-locale=ru'
        elif (self.mozlocale == 3):
            print '#ac_add_options --enable-ui-locale=zh-TW'
            print 'ac_add_options --enable-ui-locale=zh-CN'
            print '#ac_add_options --enable-ui-locale=ja'
            print '#ac_add_options --enable-ui-locale=de'
            print '#ac_add_options --enable-ui-locale=hu'
            print '#ac_add_options --enable-ui-locale=nl'
            print '#ac_add_options --enable-ui-locale=fr'
            print '#ac_add_options --enable-ui-locale=it'
            print '#ac_add_options --enable-ui-locale=ru'
        elif (self.mozlocale == 4):
            print '#ac_add_options --enable-ui-locale=zh-TW'
            print '#ac_add_options --enable-ui-locale=zh-CN'
            print 'ac_add_options --enable-ui-locale=ja'
            print '#ac_add_options --enable-ui-locale=de'
            print '#ac_add_options --enable-ui-locale=hu'
            print '#ac_add_options --enable-ui-locale=nl'
            print '#ac_add_options --enable-ui-locale=fr'
            print '#ac_add_options --enable-ui-locale=it'
            print '#ac_add_options --enable-ui-locale=ru'
        elif (self.mozlocale == 5):
            print '#ac_add_options --enable-ui-locale=zh-TW'
            print '#ac_add_options --enable-ui-locale=zh-CN'
            print '#ac_add_options --enable-ui-locale=ja'
            print 'ac_add_options --enable-ui-locale=de'
            print '#ac_add_options --enable-ui-locale=hu'
            print '#ac_add_options --enable-ui-locale=nl'
            print '#ac_add_options --enable-ui-locale=fr'
            print '#ac_add_options --enable-ui-locale=it'
            print '#ac_add_options --enable-ui-locale=ru'
        elif (self.mozlocale == 6):
            print '#ac_add_options --enable-ui-locale=zh-TW'
            print '#ac_add_options --enable-ui-locale=zh-CN'
            print '#ac_add_options --enable-ui-locale=ja'
            print '#ac_add_options --enable-ui-locale=de'
            print 'ac_add_options --enable-ui-locale=hu'
            print '#ac_add_options --enable-ui-locale=nl'
            print '#ac_add_options --enable-ui-locale=fr'
            print '#ac_add_options --enable-ui-locale=it'
            print '#ac_add_options --enable-ui-locale=ru'
        elif (self.mozlocale == 7):
            print '#ac_add_options --enable-ui-locale=zh-TW'
            print '#ac_add_options --enable-ui-locale=zh-CN'
            print '#ac_add_options --enable-ui-locale=ja'
            print '#ac_add_options --enable-ui-locale=de'
            print '#ac_add_options --enable-ui-locale=hu'
            print 'ac_add_options --enable-ui-locale=nl'
            print '#ac_add_options --enable-ui-locale=fr'
            print '#ac_add_options --enable-ui-locale=it'
            print '#ac_add_options --enable-ui-locale=ru'
        elif (self.mozlocale == 8):
            print '#ac_add_options --enable-ui-locale=zh-TW'
            print '#ac_add_options --enable-ui-locale=zh-CN'
            print '#ac_add_options --enable-ui-locale=ja'
            print '#ac_add_options --enable-ui-locale=de'
            print '#ac_add_options --enable-ui-locale=hu'
            print '#ac_add_options --enable-ui-locale=nl'
            print 'ac_add_options --enable-ui-locale=fr'
            print '#ac_add_options --enable-ui-locale=it'
            print '#ac_add_options --enable-ui-locale=ru'
        elif (self.mozlocale == 9):
            print '#ac_add_options --enable-ui-locale=zh-TW'
            print '#ac_add_options --enable-ui-locale=zh-CN'
            print '#ac_add_options --enable-ui-locale=ja'
            print '#ac_add_options --enable-ui-locale=de'
            print '#ac_add_options --enable-ui-locale=hu'
            print '#ac_add_options --enable-ui-locale=nl'
            print '#ac_add_options --enable-ui-locale=fr'
            print 'ac_add_options --enable-ui-locale=it'
            print '#ac_add_options --enable-ui-locale=ru'
        elif (self.mozlocale == 10):
            print '#ac_add_options --enable-ui-locale=zh-TW'
            print '#ac_add_options --enable-ui-locale=zh-CN'
            print '#ac_add_options --enable-ui-locale=ja'
            print '#ac_add_options --enable-ui-locale=de'
            print '#ac_add_options --enable-ui-locale=hu'
            print '#ac_add_options --enable-ui-locale=nl'
            print '#ac_add_options --enable-ui-locale=fr'
            print '#ac_add_options --enable-ui-locale=it'
            print 'ac_add_options --enable-ui-locale=ru'

        print """
##
## Official branding
##"""
        print 'ac_add_options --enable-official-branding'
        print '#ac_add_options --with-windows-version=502'

        print """
##
## Installer
##
ac_add_options --disable-installer

##
## Static or Dynmatic
##"""
        print 'ac_add_options --enable-shared'
        print 'ac_add_options --disable-static'
        print '#ac_add_options --enable-static'
        print '#ac_add_options --disable-shared'
        print '#ac_add_options --disable-libxul'

        print """
##
## Synchronize with official build
##
ac_add_options --disable-activex
ac_add_options --disable-activex-scripting"""

        if (self.project != 3):
            if (self.nightly == 1):
                print '#ac_add_options --enable-update-channel=release'
                print 'ac_add_options --enable-update-channel=nightly'
            elif (self.nightly == 2):
                print 'ac_add_options --enable-update-channel=release'
                print '#ac_add_options --enable-update-channel=nightly'

            if (self.project == 1):
                print 'ac_add_options --enable-svg'
                print 'ac_add_options --enable-canvas'
                print 'ac_add_options --enable-update-packaging'
        else:
            print 'ac_add_options --enable-svg'
            print 'ac_add_options --enable-canvas'

        print """
##
## Other settings
##
ac_add_options --enable-jemalloc
ac_add_options --disable-crashreporter
ac_add_options --disable-auto-deps
ac_add_options --disable-debug
ac_add_options --disable-tests
"""

if (len(sys.argv) < 3) or (len(sys.argv) > 6):
    print ('Usage: %s <project> <arch> [en_US|zh_TW|zh_CN|ja|de|hu|nl] [release|nightly]' % sys.argv[0])
    sys.exit(0)

if __name__ == '__main__':                  # this way the module can be
    mozgen = MozGenerator()                 # imported by other programs as well

    if (len(sys.argv) == 3):
        mozgen.loadConfig(sys.argv[1], sys.argv[2], 'en_US', 'release')
    elif (len(sys.argv) == 4):
        mozgen.loadConfig(sys.argv[1], sys.argv[2], sys.argv[3], 'release')
    elif (len(sys.argv) == 5):
        mozgen.loadConfig(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4])

    mozgen.generate()

# vim:ts=4:sw=4:sta:noet:sts=4:ai:nowrap
