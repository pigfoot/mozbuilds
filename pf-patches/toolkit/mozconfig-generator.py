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
        # arch = 0          -> P1: G6-MMX
        # arch = 1          -> P2: G6-SSE
        # arch = 2          -> P3: G7-SSE2
        #
        # branch            -> Namoroka/Tumucumaque
        #
        # locale = 0        -> en_US
        # locale = 1        -> zh_TW
        # locale = 2        -> zh_CN
        # locale = 3        -> ja
        # locale = 4        -> de
        # locale = 5        -> hu
        # locale = 6        -> nl (dutch)
        # locale = 7        -> fr (dutch)
        # locale = 8        -> it
        # locale = 9        -> ru
        # locale = 10       -> sl
        # locale = 11       -> tr
        #
        # nightly = 0       -> uninit
        # nightly = 1       -> nightly
        # nightly = 2       -> release
        #
        self.project=0 ; self.arch=0 ; self.branch=''; self.mozlocale=0 ; self.nightly=0

    def loadConfig(self, project, arch, branch, mozlocale, nightly):
        # Comment me
        _project = str(project).lower();
        _arch = str(arch).lower();
        _branch = str(branch)
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

        if _arch == 'p1':
            self.arch=0
        elif _arch == 'p2':
            self.arch=1
        elif _arch == 'p3':
            self.arch=2
        else:
            print ('<arch> must be p1, p2, or p3!')
            sys.exit(0)

        self.branch = _branch

        if _mozlocale == 'en_us':
            self.mozlocale=0
        elif _mozlocale == 'zh_tw':
            self.mozlocale=1
        elif _mozlocale == 'zh_cn':
            self.mozlocale=2
        elif _mozlocale == 'ja':
            self.mozlocale=3
        elif _mozlocale == 'de':
            self.mozlocale=4
        elif _mozlocale == 'hu':
            self.mozlocale=5
        elif _mozlocale == 'nl':
            self.mozlocale=6
        elif _mozlocale == 'fr':
            self.mozlocale=7
        elif _mozlocale == 'it':
            self.mozlocale=8
        elif _mozlocale == 'ru':
            self.mozlocale=9
        elif _mozlocale == 'sl':
            self.mozlocale=10
        elif _mozlocale == 'tr':
            self.mozlocale=11
        else:
            print ('<locale> must be en_US, zh_TW, zh_CN, ja, de, hu, nl, fr, it ru, sl or tr!')
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
##
## CPU Optimization
##"""
        _temp_list = []
        _temp_templ = '#ac_add_options --enable-optimize="-O2 -GAs %s-fp:fast -GS-"'
        _temp_list.append(_temp_templ % '')
        _temp_list.append(_temp_templ % '-arch:SSE ')
        _temp_list.append(_temp_templ % '-arch:SSE2 ')
        _temp_list[self.arch] = _temp_list[self.arch][1:]
        for line in _temp_list:
            print line

        print "mk_add_options MOZ_OBJDIR=@TOPSRCDIR@/../ff-p%d-opt" % (self.arch + 1)
        print "mk_add_options PROFILE_GEN_SCRIPT='$(PYTHON) $(MOZ_OBJDIR)/_profile/pgo/profileserver.py'"


        print """
#
# Localized Firefox
#"""
        print 'ac_add_options --with-l10n-base=../l10n'
        _temp_list = []
        _temp_templ = '#ac_add_options --enable-ui-locale=%s'
        _temp_list.append(_temp_templ % 'zh-TW')
        _temp_list.append(_temp_templ % 'zh-CN')
        _temp_list.append(_temp_templ % 'ja')
        _temp_list.append(_temp_templ % 'de')
        _temp_list.append(_temp_templ % 'hu')
        _temp_list.append(_temp_templ % 'nl')
        _temp_list.append(_temp_templ % 'fr')
        _temp_list.append(_temp_templ % 'it')
        _temp_list.append(_temp_templ % 'ru')
        _temp_list.append(_temp_templ % 'sl')
        _temp_list.append(_temp_templ % 'tr')
        if (self.mozlocale > 0):
            _temp_list[self.mozlocale - 1] = _temp_list[self.mozlocale - 1][1:]
        for line in _temp_list:
            print line

        print """
##
## Official branding
##"""
        print 'ac_add_options --enable-official-branding'

        print """
##
## OS related
##"""
        print '#ac_add_options --with-windows-version=502'
        print '#WIN32_CRT_SRC_DIR=$VC9DIR/crt/src'

        print """
##
## Installer
##
ac_add_options --enable-installer

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
                print 'ac_add_options --enable-update-packaging'

        print """
##
## Other settings
##"""
        print "ac_add_options --enable-jemalloc"
        print "ac_add_options --disable-crashreporter"
        print "ac_add_options --disable-debug"
        print "ac_add_options --disable-tests"

if (len(sys.argv) < 3) or (len(sys.argv) > 7):
    print ('Usage: %s <project> <arch> [branch] [en_US|zh_TW|zh_CN|ja|de|hu|nl|it|ru|sl|tr] [release|nightly]' % sys.argv[0])
    sys.exit(0)

if __name__ == '__main__':                  # this way the module can be
    mozgen = MozGenerator()                 # imported by other programs as well

    if (len(sys.argv) == 3):
        mozgen.loadConfig(sys.argv[1], sys.argv[2], 'Namoroka', 'en_US', 'release')
    elif (len(sys.argv) == 4):
        mozgen.loadConfig(sys.argv[1], sys.argv[2], sys.argv[3], 'en_US', 'release')
    elif (len(sys.argv) == 5):
        mozgen.loadConfig(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], 'release')
    elif (len(sys.argv) == 6):
        mozgen.loadConfig(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5])

    mozgen.generate()

# vim:ts=4:sw=4:sta:noet:sts=4:ai:nowrap
