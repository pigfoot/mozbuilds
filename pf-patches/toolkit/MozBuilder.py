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

# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

import os, datetime, shutil, subprocess

# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

class MozBuilder:

    def __init__(self, szProject, szBranch, szArch, szLocale, bBranding, szUpdateChannel, bPrivate):
        self.szProject       = szProject
        self.szBranch        = szBranch
        self.szArch          = szArch
        self.szLocale        = szLocale
        self.bBranding       = bBranding
        self.bPrivate        = bPrivate
        self.szUpdateChannel = szUpdateChannel

        self.MinefieldPatchSet = [
        ]

        self.ShiretokoPatchSet = [
            '02_tweaks.patch'
        ]

        self.GranParadisoPatchSet = [
#           '01_de_XY_GL.patch',
            '02_tweaks.patch',
#           '03_compatible_inspect.patch',
#           '04_remove_embedding.patch',
#           '05_static_update.patch',
#           '92-BugID420421.patch'
        ]

        self.BonEchoPatchSet = [
            '00_vc9.patch',
            '01_de_XY_GL.patch',
            '02_tweaks.patch',
            '03_compatible_inspect.patch',
            '04_remove_embedding.patch',
            '05_static_update.patch',
            '92-BugID420421.patch'
        ]

        self.aDictBranch = { \
            'Minefield'     : { 'Ver' : 'Trunk',            'PatchPath': '../pf-patches/patchset/0_Minefield/',    'PatchSet' : self.MinefieldPatchSet    },
            'Shiretoko'     : { 'Ver' : '3.5.2-Release',    'PatchPath': '../pf-patches/patchset/5_Shiretoko/',    'PatchSet' : self.ShiretokoPatchSet    },
            'GranParadiso'  : { 'Ver' : '3.0.13-Release',   'PatchPath': '../pf-patches/patchset/4_GranParadiso/', 'PatchSet' : self.GranParadisoPatchSet },
            'BonEcho'       : { 'Ver' : '2.0.0.16-Release', 'PatchPath': '../pf-patches/patchset/3_BonEcho/',      'PatchSet' : self.BonEchoPatchSet      },
        }

        self.aDictArch = { \
            'p0' : { 'Tag': 'p0', 'Ver' : 'VC9-P0'},
            'p1' : { 'Tag': 'p1', 'Ver' : 'VC9-P1'},
            'p2' : { 'Tag': 'p2', 'Ver' : 'VC9-P2'},
            'p3' : { 'Tag': 'p3', 'Ver' : 'VC9-P3'},
        }

        #self.szTime = datetime.date.today().strftime('%Y%m%d')

        if (szProject == 'fx'):
            self.szProjectFull = 'Firefox'
        elif (szProject == 'tb'):
            self.szProjectFull = 'Thunderbird'
        elif (szProject == 'sm'):
            self.szProjectFull = 'SeaMonkey'

    def run(self):

        if (not self.preInst()):
            return

        self.system('make -C mozilla -f client.mk profiledbuild | tee BuildLog.txt')

        if (not self.postInst()):
            return

        self.system('make -C mozilla -f client.mk distclean')

    def preInst(self):

        szProject     = self.szProject
        szArch        = self.aDictArch[self.szArch]['Tag']
        szLocale      = self.szLocale
        szUpdaterArch = self.szArch

        if (self.bBranding):
            szUpdaterArch = 'f' + szUpdaterArch[1:]

        # Execute patching
        self.system('python ../pf-patches/toolkit/backup.py restore')

        # CRT
        if (os.environ["MOZ_MSVCVERSION"] == '9'):
            self.system('patch -p0 < ../pf-patches/patchset/mozcrt19_diff_for_vc9sp1_rev1/jemalloc.vc9sp1.patch')
            self.system('cp -f ../pf-patches/patchset/mozcrt19_diff_for_vc9sp1_rev1/crtvc9sp1.diff mozilla/memory/jemalloc/')

        # Change icon if not official branding
        if (not self.bBranding):
            shutil.copy(os.path.join('..', 'pf-patches', 'branding', 'firefox2005_icon_ico.ico'), os.path.join('mozilla', 'other-licenses', 'branding', 'firefox', 'firefox.ico'))
            shutil.copy(os.path.join('..', 'pf-patches', 'branding', 'firefox2005_icon_png.png'), os.path.join('mozilla', 'other-licenses', 'branding', 'firefox', 'content', 'about.png'))
            shutil.copy(os.path.join('mozilla', 'browser', 'base', 'branding', 'aboutCredits.png'), os.path.join('mozilla', 'other-licenses', 'branding', 'firefox', 'content', 'aboutCredits.png'))

        if (szLocale == 'en_US'):
            self.aDictBranch[self.szBranch]["PatchSet"].append('90_branding.patch')
        else:
            self.aDictBranch[self.szBranch]["PatchSet"].append('91_branding_locale.patch')

        for patch in self.aDictBranch[self.szBranch]["PatchSet"]:
            self.system('patch -p0 < %s' % self.aDictBranch[self.szBranch]["PatchPath"] + patch)

        if (szProject == 'tb'):
            self.system('patch < ../w32build/patch/02_Modify_PRODUCT_VERSION.patch')

        self.system('python ../pf-patches/toolkit/mozconfig-generator.py %s %s %s %s > mozilla/.mozconfig' % (szProject, szArch, szLocale, self.szUpdateChannel))

        # Replace updater URL
        self.system('sed "s#__pigfoot_arch__#' + szUpdaterArch + '#" < ' + os.path.join('mozilla', 'browser', 'app', 'profile', 'firefox.js') + ' > ' + os.path.join('mozilla', 'browser', 'app', 'profile', 'firefox.js.tmp'))
        self.system('sed "s#\\n##g" < ' + os.path.join('mozilla', 'browser', 'app', 'profile', 'firefox.js.tmp') + ' > ' + os.path.join('mozilla', 'browser', 'app', 'profile', 'firefox.js'))

        return True

    def postInst(self):

        if (self.szBranch == 'BonEcho'):
            pipe = os.popen("cat mozilla/dist/include/nsBuildID.h | grep \"#define NS_BUILD_ID\" | awk '{print $3}'")
            self.szTime = pipe.readline().strip('\n')
        else:
            pipe = os.popen('cat mozilla/dist/bin/platform.ini | grep "BuildID"')
            self.szTime = pipe.readline().strip('\n').split('=')[1]
        pipe.close()

        szTime    = self.szTime
        szVer     = self.aDictBranch[self.szBranch]['Ver']
        szArch    = self.aDictArch[self.szArch]['Ver']
        szLocale  = self.szLocale

        if (not os.path.exists(os.path.join('mozilla', 'dist', 'bin', 'firefox.exe'))):
            print '[%s] does not exist!' % (os.path.join('mozilla', 'dist', 'bin', 'firefox.exe'))
            return False

        szDistOldDir = os.path.join('mozilla', 'dist', 'bin')
        szDistNewDir = os.path.join('mozilla', 'dist', self.szProjectFull)

        self.dist(self.szProject, szDistOldDir, szDistNewDir)

        ## TB(Pub), FX(Pri), FX(Pub)
        self.archive(szDistNewDir)

        return True

    def dist(self, szProject, szSrcDir, szDstDir):

        aListFxDelFiles = [ \
            'dependentlibs.list',
            'LICENSE',
            'mangle.exe',
            'README.txt',
            'regxpcom.exe',
            'shlibsign.exe',
            'xpcshell.exe',
            'xpidl.exe',
            'xpt_dump.exe',
            'xpt_link.exe',
        ]

        if (os.path.exists(szDstDir)):
            shutil.rmtree(szDstDir)

        shutil.copytree(szSrcDir, szDstDir)

        for szFile in aListFxDelFiles:
            if (os.path.exists(os.path.join(szDstDir, szFile))):
                print 'Delete [%s] from [%s]' % (os.path.join(szDstDir, szFile), szDstDir)
                os.remove(os.path.join(szDstDir, szFile))
            else:
                print '[%s] of [%s] does not exist!' % (os.path.join(szDstDir, szFile), szDstDir)

#       if (szProject == 'tb'):
#           shutil.rmtree(os.path.join(szDstDir, 'plusins'))

        shutil.copy2(os.path.join('..', 'pf-patches', 'plugins', 'np-mswmp.dll'), os.path.join(szDstDir, 'plugins', 'np-mswmp.dll'))
        shutil.copy2(os.path.join('..', 'pf-patches', 'plugins', 'NPSWF32.dll'), os.path.join(szDstDir, 'plugins', 'NPSWF32.dll'))
        shutil.copy2(os.path.join('..', 'pf-patches', 'searchplugins', 'dictionary-com.xml'), os.path.join(szDstDir, 'searchplugins', 'dictionary-com.xml'))

        szCustomDir = os.path.join(szDstDir, '%s (pigfoot) %s' % (self.szTime, self.aDictArch[self.szArch]['Ver']))
        print 'mkdir [%s]' % szCustomDir
        os.mkdir(szCustomDir)
        print 'copy [%s] to [%s]' % ('.mozconfig' , os.path.join(szCustomDir, 'mozconfig'))
        shutil.copy(os.path.join('mozilla', '.mozconfig') , os.path.join(szCustomDir, 'mozconfig'))

    def archive(self, szSrcDir):

        szProject = self.szProject
        szTime    = self.szTime
        szVer     = self.aDictBranch[self.szBranch]['Ver']
        szArch    = self.aDictArch[self.szArch]['Ver']
        szLocale  = self.szLocale

        # Compose archiver name
        szArchiveFile  = '%s-%s-CE-%s (pigfoot) %s-%s.7z.exe' % (self.szProjectFull, szTime, szVer, szArch, szLocale)
        szMarFile      = szArchiveFile[:-7] + '.mar'
        szLogFile      = szArchiveFile[:-7] + '.log'
        szPortableFile = szArchiveFile[:-7] + '.7z'

        # Build update-packaging
        self.system('make -C mozilla/other-licenses/bsdiff')
        self.system('make -C mozilla/tools/update-packaging')

        for root, dirs, files in os.walk('mozilla/dist/update'):
            self.system('mv %s/%s "%s"' % (root, files[0], os.path.join(szMarFile)))

        self.system('make -C mozilla/other-licenses/bsdiff clean')
        self.system('make -C mozilla/tools/update-packaging clean')

        if os.path.exists(szArchiveFile):
            os.remove(szArchiveFile)
        os.chdir('mozilla/dist')
        self.system('7z a "%s" -mx9 -mmt -sfx7z.sfx -r %s/*' % ('../../' + szArchiveFile, self.szProjectFull))
        os.chdir('../..')

        os.chdir('mozilla/dist')
        shutil.copy2(os.path.join('..', '..', '..', 'pf-patches', 'toolkit', 'FirefoxLoader.exe'), 'FirefoxLoader.exe')
        self.system('7z a "%s" -mx9 -mmt -r FirefoxLoader.exe %s/*' % ('../../' + szPortableFile, self.szProjectFull))
        os.remove('FirefoxLoader.exe')
        os.chdir('../..')

        self.system('mv BuildLog.txt "%s"' % szLogFile)
        self.system('7z a "%s.7z" -mx9 -mmt -m0=PPMd "%s"' % (szLogFile, szLogFile))
        os.remove(szLogFile)
        szLogFile += '.7z'

    def system(self, szCmd):

        self.log('%s' % szCmd)
        os.system(szCmd)
        #p = subprocess.Popen(szCmd, shell=True)
        #sts = os.waitpid(p.pid, 0)

    def log(self, szMsg):

        print '%s' % szMsg

# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

def usage(szProg):
    print ('Usage: %s <project> <branch> <arch> [en_US|zh_TW|zh_CN|ja|de|nl|hu] [no-branding|branding] [release|nightly] [private|public]\n' % szProg)

# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

if __name__== '__main__':
    import sys

    if (len(sys.argv) < 4) or (len(sys.argv) > 8):
        sys.exit( usage(sys.argv[0]) )

    szProject = sys.argv[1]
    szBranch  = sys.argv[2]
    szArch    = sys.argv[3]
    szLocale  = 'en_US'
    bBranding = False
    szUpdateChannel = 'nightly'
    bPrivate  = False

    if (len(sys.argv) >= 5):
        szLocale  = sys.argv[4]

    if (len(sys.argv) >= 6):
        if (sys.argv[5] == 'branding'):
            bBranding = True

    if (len(sys.argv) >= 7):
        szUpdateChannel = sys.argv[6]

    if (len(sys.argv) >= 8):
        szUpdateChannel = sys.argv[6]
        if (sys.argv[7] == 'private'):
            bPrivate = True

#   print '%s, %s, %s, %s, %d, %s, %d' % (szProject, szBranch, szArch, szLocale, bBranding, szUpdateChannel, bPrivate)

    _mozbuilder = MozBuilder(szProject, szBranch, szArch, szLocale, bBranding, szUpdateChannel, bPrivate)
    _mozbuilder.run()

# vim:ts=4:sw=4:sta:noet:sts=4:ai:nowrap
