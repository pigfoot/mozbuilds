#!/bin/bash

TAG='FIREFOX_3_6_8_RELEASE'
LOCALES='zh-TW zh-CN ja de fr it ru sl'

#FILENAME='TRUNK-source.tar.bz2'
#FILENAME='FIREFOX_3_0_14_RELEASE-source.tar.bz2'
#FILENAME='FIREFOX_2_0_0_16_RELEASE-source.tar.bz2'
#FILENAME='THUNDERBIRD_1_5_0_8_RELEASE-source.tar.bz2'
#FILENAME='SEAMONKEY_1_0_5_RELEASE-source.tar.bz2'

##############################################################################################
###
#rm -rf mozilla
#tar jxvf ../${FILENAME}

if [[ -z ${TAG/FIREFOX_3_6_*} ]]; then
    _GECKO_VER="1.9.2"
else
    _GECKO_VER="1.9.1"
fi

#hg clone http://hg.mozilla.org/releases/mozilla-${_GECKO_VER} mozilla

#echo "rm -rf l10n ; mkdir l10n ; cd l10n"
#rm -rf l10n ; mkdir l10n ; cd l10n

#for loc in ${LOCALES}; do
#echo "hg clone http://hg.mozilla.org/releases/l10n-mozilla-${_GECKO_VER}/${loc}"
#hg clone http://hg.mozilla.org/releases/l10n-mozilla-${_GECKO_VER}/${loc}
#done
#cd -

echo "cd mozilla"
cd mozilla
echo "hg pull"
hg pull
echo "hg update ${TAG}"
hg update ${TAG}
echo "cd -"
cd -

echo "cd l10n"
cd l10n
for loc in ${LOCALES}; do
echo "cd ${loc}"
cd ${loc}
echo "hg pull"
hg pull
echo "hg update ${TAG}"
hg update ${TAG}
echo "cd -"
cd -
done
echo "cd .."
cd ..

$MOZBUILDPFPATCHDIR/toolkit/backup.py backup
