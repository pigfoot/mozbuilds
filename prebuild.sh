#!/bin/bash -v

TAG='FIREFOX_3_5_7_RELEASE'
LOCALES='zh-TW zh-CN ja de fr'

#FILENAME='TRUNK-source.tar.bz2'
#FILENAME='FIREFOX_3_0_14_RELEASE-source.tar.bz2'
#FILENAME='FIREFOX_2_0_0_16_RELEASE-source.tar.bz2'
#FILENAME='THUNDERBIRD_1_5_0_8_RELEASE-source.tar.bz2'
#FILENAME='SEAMONKEY_1_0_5_RELEASE-source.tar.bz2'

##############################################################################################
#rm -rf mozilla
#tar jxvf ../${FILENAME}

#hg clone http://hg.mozilla.org/releases/mozilla-1.9.1 mozilla

#rm -rf l10n ; mkdir l10n ; cd l10n
#for ${loc} in $(LOCALES}; do
#hg clone http://hg.mozilla.org/releases/l10n-mozilla-1.9.1/${loc}
#done
#cd ..

#cd mozilla
#hg update ${TAG}
#cd -

cd l10n
for loc in ${LOCALES}; do
cd ${loc}
hg update ${TAG}
cd -
done
cd -

#$MOZBUILDPFPATCHDIR/toolkit/backup.py backup
