#!/bin/bash -v

#BUILD_ID="BonEcho"
#BUILD_ID="GranParadiso"
#BUILD_ID="Shiretoko"
#BUILD_ID="Namoroka"
#BUILD_ID="Tumucumaque"
#BUILD_ID="FF5"
BUILD_ID="FF6"

MozBuilder=$MOZBUILDPFPATCHDIR/toolkit/MozBuilder.py

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 en_US no-branding release public
$MozBuilder fx ${BUILD_ID} p2 en_US no-branding release public
$MozBuilder fx ${BUILD_ID} p1 en_US no-branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 zh_TW no-branding release public
$MozBuilder fx ${BUILD_ID} p2 zh_TW no-branding release public
$MozBuilder fx ${BUILD_ID} p1 zh_TW no-branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 zh_CN no-branding release public
$MozBuilder fx ${BUILD_ID} p2 zh_CN no-branding release public
$MozBuilder fx ${BUILD_ID} p1 zh_CN no-branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 ja no-branding release public
$MozBuilder fx ${BUILD_ID} p2 ja no-branding release public
$MozBuilder fx ${BUILD_ID} p1 ja no-branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 de no-branding release public
$MozBuilder fx ${BUILD_ID} p2 de no-branding release public
$MozBuilder fx ${BUILD_ID} p1 de no-branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 fr no-branding release public
$MozBuilder fx ${BUILD_ID} p2 fr no-branding release public
$MozBuilder fx ${BUILD_ID} p1 fr no-branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 it no-branding release public
$MozBuilder fx ${BUILD_ID} p2 it no-branding release public
$MozBuilder fx ${BUILD_ID} p1 it no-branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 ru no-branding release public
$MozBuilder fx ${BUILD_ID} p2 ru no-branding release public
$MozBuilder fx ${BUILD_ID} p1 ru no-branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 sl no-branding release public
$MozBuilder fx ${BUILD_ID} p2 sl no-branding release public
$MozBuilder fx ${BUILD_ID} p1 sl no-branding release public

##############################################################################################
$MozBuilder fx ${BUILD_ID} p3 tr no-branding release public
$MozBuilder fx ${BUILD_ID} p2 tr no-branding release public
$MozBuilder fx ${BUILD_ID} p1 tr no-branding release public

cd ..
