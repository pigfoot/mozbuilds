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

        self.FF5PatchSet = [
            '02_tweaks.patch',
            '03_Bug476766.patch',
            '04_Bug515492-vc10-jemalloc-fix.patch'    # &Bug668151
        ]

        self.NamorokaPatchSet = [
#           '01_google-ssl.patch',
            '02_tweaks.patch',
            '03_Bug476766.patch',
            '04_correct_hg_rev.patch'
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
            'FF5'           : { 'Ver' : '5.0-Release',      'PatchPath': '../pf-patches/patchset/8_FF5/',          'PatchSet' : self.FF5PatchSet          },
            'Namoroka'      : { 'Ver' : '3.6.13-Release',   'PatchPath': '../pf-patches/patchset/6_Namoroka/',     'PatchSet' : self.NamorokaPatchSet     },
            'Shiretoko'     : { 'Ver' : '3.5.7-Release',    'PatchPath': '../pf-patches/patchset/5_Shiretoko/',    'PatchSet' : self.ShiretokoPatchSet    },
            'GranParadiso'  : { 'Ver' : '3.0.14-Release',   'PatchPath': '../pf-patches/patchset/4_GranParadiso/', 'PatchSet' : self.GranParadisoPatchSet },
            'BonEcho'       : { 'Ver' : '2.0.0.16-Release', 'PatchPath': '../pf-patches/patchset/3_BonEcho/',      'PatchSet' : self.BonEchoPatchSet      },
        }

        self.aDictArch = { \
            'p0' : { 'Tag': 'p0', 'Ver' : 'VC10-P0'},
            'p1' : { 'Tag': 'p1', 'Ver' : 'VC10-P1'},
            'p2' : { 'Tag': 'p2', 'Ver' : 'VC10-P2'},
            'p3' : { 'Tag': 'p3', 'Ver' : 'VC10-P3'},
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

        self.system('make -C mozilla -f client.mk profiledbuild 2>&1 | tee BuildLog.txt')
        self.system('make -C ff-%s-opt package 2>&1 | tee -a BuildLog.txt' % szArch)

        if (not self.postInst()):
            return

        self.system('rm -rf ff-%s-opt' % self.aDictArch[self.szArch]['Tag'])
        self.system('make -C mozilla -f client.mk distclean')

    def preInst(self):

        szProject       = self.szProject
        szArch          = self.aDictArch[self.szArch]['Tag']
        szLocale        = self.szLocale
        szUpdaterArch   = self.szArch
        szUserAgentArch = self.szArch.upper()

        if (self.bBranding):
            szUpdaterArch = 'f' + szUpdaterArch[1:]

        # Execute patching
        self.system('python ../pf-patches/toolkit/backup.py restore')

        # CRT
        if (os.environ["MOZ_MSVCVERSION"] == '9') and (self.szBranch == 'Shiretoko' or self.szBranch == 'GranParadiso'):
            _Path = self.aDictBranch[self.szBranch]["PatchPath"] + '/mozcrt19_diff_for_vc9sp1_rev1/'
            self.system('patch -p0 < %s' % (_Path + 'jemalloc.vc9sp1.patch'))
            self.system('cp -f %s mozilla/memory/jemalloc/' % (_Path + 'crtvc9sp1.diff'))

        # Change icon if not official branding
        if (not self.bBranding):
            shutil.copy(os.path.join('..', 'pf-patches', 'branding', 'firefox2005_icon_ico.ico'), os.path.join('mozilla', 'other-licenses', 'branding', 'firefox', 'firefox.ico'))
            shutil.copy(os.path.join('..', 'pf-patches', 'branding', 'firefox2005_icon_png.png'), os.path.join('mozilla', 'other-licenses', 'branding', 'firefox', 'content', 'about.png'))

        if (szLocale == 'en_US'):
            self.aDictBranch[self.szBranch]["PatchSet"].append('90_branding.patch')
        else:
            self.aDictBranch[self.szBranch]["PatchSet"].append('91_branding_locale.patch')

        # Durty patch to perform dos2unix forcely.
        if os.path.exists('l10n/it/other-licenses/branding/firefox/brand.dtd.BAK'):
            self.dos2unix(os.path.join('l10n', 'it', 'other-licenses', 'branding', 'firefox', 'brand.dtd'))

        for patch in self.aDictBranch[self.szBranch]["PatchSet"]:
            self.system('patch -p0 < %s' % self.aDictBranch[self.szBranch]["PatchPath"] + patch)

        if (szProject == 'tb'):
            self.system('patch < ../w32build/patch/02_Modify_PRODUCT_VERSION.patch')

        self.system('python ../pf-patches/toolkit/mozconfig-generator.py %s %s %s %s %s > mozilla/.mozconfig' % (szProject, szArch, self.szBranch, szLocale, self.szUpdateChannel))

        # Replace updater URL
        _pairs = [('__pigfoot_useragent_arch__', szUserAgentArch), ('__pigfoot_arch__', szUpdaterArch)]
        self.replace(os.path.join('mozilla', 'browser', 'app', 'profile', 'firefox.js'), _pairs)

        return True

    def postInst(self):

        szArch    = self.aDictArch[self.szArch]['Tag']

        if (self.szBranch == 'BonEcho'):
            pipe = os.popen("cat mozilla/dist/include/nsBuildID.h | grep \"#define NS_BUILD_ID\" | awk '{print $3}'")
            self.szTime = pipe.readline().strip('\n')
        else:
            pipe = os.popen('cat ff-%s-opt' % (szArch) + '/dist/bin/platform.ini | grep "BuildID"')
            self.szTime = pipe.readline().strip('\n').split('=')[1]

        pipe.close()

        szTime    = self.szTime
        szVer     = self.aDictBranch[self.szBranch]['Ver']
        szLocale  = self.szLocale

        szDistOldDir = os.path.join('ff-%s-opt' % (szArch), 'dist', 'firefox')
        szDistNewDir = os.path.join('ff-%s-opt' % (szArch), 'dist', self.szProjectFull)

        if (not os.path.exists(os.path.join(szDistOldDir, 'firefox.exe'))):
            print '[%s] does not exist!' % (os.path.join(szDistOldDir, 'firefox.exe'))
            return False

        os.rename(szDistOldDir, szDistNewDir)

        self.dist(self.szProject, szDistNewDir)

        ## TB(Pub), FX(Pri), FX(Pub)
        self.archive(szDistNewDir)

        return True

    def dist(self, szProject, szTargetDir):

#       if (szProject == 'tb'):
#           shutil.rmtree(os.path.join(szTargetDir, 'plusins'))

        if (not os.path.exists(os.path.join(szTargetDir, 'plugins'))):
            os.mkdir(os.path.join(szTargetDir, 'plugins'))

        shutil.copy2(os.path.join('..', 'pf-patches', 'plugins', 'np-mswmp.dll'), os.path.join(szTargetDir, 'plugins', 'np-mswmp.dll'))
        shutil.copy2(os.path.join('..', 'pf-patches', 'searchplugins', 'dictionary-com.xml'), os.path.join(szTargetDir, 'searchplugins', 'dictionary-com.xml'))
        shutil.copy2(os.path.join('..', 'pf-patches', 'msvcrt', 'msvcr100.dll'), os.path.join(szTargetDir))
        shutil.copy2(os.path.join('..', 'pf-patches', 'msvcrt', 'msvcp100.dll'), os.path.join(szTargetDir))

        szCustomDir = os.path.join(szTargetDir, '%s (pigfoot) %s' % (self.szTime, self.aDictArch[self.szArch]['Ver']))
        if (os.path.exists(os.path.join(szCustomDir))):
            shutil.rmtree(szCustomDir)

        print 'mkdir [%s]' % szCustomDir
        os.mkdir(os.path.join(szCustomDir))

        print 'copy [%s] to [%s]' % ('.mozconfig' , os.path.join(szCustomDir, 'mozconfig'))
        shutil.copy(os.path.join('mozilla', '.mozconfig') , os.path.join(szCustomDir, 'mozconfig'))

    def archive(self, szTargetDir):

        szProject = self.szProject
        szTime    = self.szTime
        szVer     = self.aDictArch[self.szArch]['Ver']
        szArch    = self.aDictArch[self.szArch]['Tag']
        szLocale  = self.szLocale

        _ObjPath = 'ff-%s-opt' % (szArch) + '/dist/'
        _ObjPathOrig = '../../'

        # Compose archiver name, AppEngine cannot support space and bracket
        szArchiveFile  = '%s-%s-CE-%s-pigfoot-%s-%s.7z.exe' % (self.szProjectFull, szTime, self.aDictBranch[self.szBranch]['Ver'], szVer, szLocale)
        szMarFile      = szArchiveFile[:-7] + '.mar'
        szLogFile      = szArchiveFile[:-7] + '.log'
        szPortableFile = szArchiveFile[:-7] + '-Portable.7z.exe'

        # Build update-packaging
        self.system('make -C ff-%s-opt/tools/update-packaging | tee -a BuildLog.txt' % szArch)

        for root, dirs, files in os.walk('ff-%s-opt/dist/update' % szArch):
            self.system('mv %s/%s "%s"' % (root, files[0], os.path.join(szMarFile)))

        if os.path.exists(szArchiveFile):
            os.remove(szArchiveFile)

        os.chdir(_ObjPath)
        self.system('7z a "%s" -mx9 -mmt -sfx7z.sfx -r %s/*' % (_ObjPathOrig + szArchiveFile, self.szProjectFull))
        os.chdir(_ObjPathOrig)

        os.chdir(_ObjPath)
        shutil.copy2(os.path.join(_ObjPathOrig, '..', 'pf-patches', 'toolkit', 'FirefoxLoader.exe'), 'FirefoxLoader.exe')
        self.system('7z a "%s" -mx9 -mmt -sfx7z.sfx -r FirefoxLoader.exe %s/*' % (_ObjPathOrig + szPortableFile, self.szProjectFull))
        os.remove('FirefoxLoader.exe')
        os.chdir(_ObjPathOrig)

        self.system('mv BuildLog.txt "%s"' % szLogFile)
        self.system('7z a "%s.7z" -mx9 -mmt -m0=PPMd "%s"' % (szLogFile, szLogFile))
        os.remove(szLogFile)
        szLogFile += '.7z'

    def system(self, szCmd):

        self.log('%s' % szCmd)
        os.system(szCmd)
        #p = subprocess.Popen(szCmd, shell=True)
        #sts = os.waitpid(p.pid, 0)

    def dos2unix(self, path):

        inf = open(path, "rU")
        data = inf.read()
        inf.close()

        outf = open(path, "wb")
        outf.write(data)
        outf.close()
        self.log('\'%s\' is converted to UNIX format.' % path)

    def replace(self, path, *args):
        data = []
        inf = open(path, "rU")

        for line in inf:
            for _pair in args[0]:
                line = line.replace(_pair[0], _pair[1])
            data.append(line)
        inf.close()

        outf = open(path, "wb")
        for line in data:
            outf.write(line)
        outf.close()

    def log(self, szMsg):

        print '%s' % szMsg

# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

def usage(szProg):
    print ('Usage: %s <project> <branch> <arch> [en_US|zh_TW|zh_CN|ja|de|nl|hu|it|ru] [no-branding|branding] [release|nightly] [private|public]\n' % szProg)

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
