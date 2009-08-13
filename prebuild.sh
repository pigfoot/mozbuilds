#!/bin/bash -v

#FILENAME='TRUNK-source.tar.bz2'
#FILENAME='FIREFOX_3_0_13_RELEASE-source.tar.bz2'
#FILENAME='FIREFOX_2_0_0_16_RELEASE-source.tar.bz2'
#FILENAME='THUNDERBIRD_1_5_0_8_RELEASE-source.tar.bz2'
#FILENAME='SEAMONKEY_1_0_5_RELEASE-source.tar.bz2'

##############################################################################################
#rm -rf mozilla
#tar jxvf ../${FILENAME}

#hg clone -r FIREFOX_3_5_1_RELEASE http://hg.mozilla.org/releases/mozilla-1.9.1 mozilla

#rm -rf l10n ; mkdir l10n ; cd l10n
#hg clone http://hg.mozilla.org/releases/l10n-mozilla-1.9.1/zh-TW
#hg clone http://hg.mozilla.org/releases/l10n-mozilla-1.9.1/zh-CN
#hg clone http://hg.mozilla.org/releases/l10n-mozilla-1.9.1/ja
#hg clone http://hg.mozilla.org/releases/l10n-mozilla-1.9.1/de
#hg clone http://hg.mozilla.org/releases/l10n-mozilla-1.9.1/fr
#cd ..

$MOZBUILDPFPATCHDIR/toolkit/backup.py backup
