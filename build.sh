#!/bin/bash -v

#BUILD_ID="BonEcho"
#BUILD_ID="GranParadiso"
#BUILD_ID="Shiretoko"
#BUILD_ID="Namoroka"
#BUILD_ID="Tumucumaque"
#BUILD_ID="FF5"
#BUILD_ID="FF6"
BUILD_ID="FF8"

MozBuilder=$MOZBUILDPFPATCHDIR/toolkit/MozBuilder.py

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 en_US branding release public
$MozBuilder fx ${BUILD_ID} p2 en_US branding release public
$MozBuilder fx ${BUILD_ID} p1 en_US branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 zh_TW branding release public
$MozBuilder fx ${BUILD_ID} p2 zh_TW branding release public
$MozBuilder fx ${BUILD_ID} p1 zh_TW branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 zh_CN branding release public
$MozBuilder fx ${BUILD_ID} p2 zh_CN branding release public
$MozBuilder fx ${BUILD_ID} p1 zh_CN branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 ja branding release public
$MozBuilder fx ${BUILD_ID} p2 ja branding release public
$MozBuilder fx ${BUILD_ID} p1 ja branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 de branding release public
$MozBuilder fx ${BUILD_ID} p2 de branding release public
$MozBuilder fx ${BUILD_ID} p1 de branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 fr branding release public
$MozBuilder fx ${BUILD_ID} p2 fr branding release public
$MozBuilder fx ${BUILD_ID} p1 fr branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 it branding release public
$MozBuilder fx ${BUILD_ID} p2 it branding release public
$MozBuilder fx ${BUILD_ID} p1 it branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 ru branding release public
$MozBuilder fx ${BUILD_ID} p2 ru branding release public
$MozBuilder fx ${BUILD_ID} p1 ru branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 sl branding release public
$MozBuilder fx ${BUILD_ID} p2 sl branding release public
$MozBuilder fx ${BUILD_ID} p1 sl branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 tr branding release public
$MozBuilder fx ${BUILD_ID} p2 tr branding release public
$MozBuilder fx ${BUILD_ID} p1 tr branding release public

cd ..
