



REM Environment variables:
set TT_MOZ_SRC_DIR=F:\Mozilla\mozilla
set TT_PATCH_DIR=F:\Mozilla\tete009_patch\tete\Fx30




REM link a mozlibpixman.dll for my test builds:
patch -N %TT_MOZ_SRC_DIR%\gfx\cairo\libpixman\src\Makefile.in %TT_PATCH_DIR%\libpixman_Makefile.in.patch
xcopy %TT_PATCH_DIR%\mozlibpixman_tt.def %TT_MOZ_SRC_DIR%\gfx\cairo\libpixman\src\ /r /y




REM nsID:
patch -N %TT_MOZ_SRC_DIR%\xpcom\glue\nsID.h %TT_PATCH_DIR%\nsID.h.patch

REM nsCOMPtr:
patch -N %TT_MOZ_SRC_DIR%\xpcom\glue\nsCOMPtr.cpp %TT_PATCH_DIR%\nsCOMPtr.cpp.patch
patch -N %TT_MOZ_SRC_DIR%\xpcom\glue\nsCOMPtr.h %TT_PATCH_DIR%\nsCOMPtr.h.patch

REM string:
patch -N %TT_MOZ_SRC_DIR%\xpcom\string\public\nsCharTraits.h %TT_PATCH_DIR%\nsCharTraits.h.patch
patch -N %TT_MOZ_SRC_DIR%\xpcom\string\src\nsStringObsolete.cpp %TT_PATCH_DIR%\nsStringObsolete.cpp.patch

REM pl double hashing:
patch -N %TT_MOZ_SRC_DIR%\xpcom\glue\pldhash.c %TT_PATCH_DIR%\pldhash.c.patch

REM nsDeque::Empty():
patch -N %TT_MOZ_SRC_DIR%\xpcom\glue\nsDeque.cpp %TT_PATCH_DIR%\nsDeque.cpp.patch




REM append LDFLAGS to DLLFLAGS:
patch -N %TT_MOZ_SRC_DIR%\nsprpub\configure.in %TT_PATCH_DIR%\nsprpub_configure.in.patch
patch -N %TT_MOZ_SRC_DIR%\nsprpub\configure %TT_PATCH_DIR%\nsprpub_configure.patch

REM SocketConnectContinue
patch -N %TT_MOZ_SRC_DIR%\nsprpub\pr\src\io\prsocket.c %TT_PATCH_DIR%\prsocket.c.patch

REM PR_AtomicIncrement, PR_AtomicDecrement:
patch -N %TT_MOZ_SRC_DIR%\nsprpub\pr\src\misc\pratom.c %TT_PATCH_DIR%\pratom.c.patch
patch -N %TT_MOZ_SRC_DIR%\nsprpub\pr\include\pratom.h %TT_PATCH_DIR%\pratom.h.patch

REM PR_Malloc, PR_Calloc, PR_Realloc, PR_Free, PR_AtomicIncrement, PR_AtomicDecrement:
patch -N %TT_MOZ_SRC_DIR%\nsprpub\pr\src\malloc\prmem.c %TT_PATCH_DIR%\prmem.c.patch
patch -N %TT_MOZ_SRC_DIR%\nsprpub\pr\include\prmem.h %TT_PATCH_DIR%\prmem.h.patch

REM PR_GetCurrentThread:
patch -N %TT_MOZ_SRC_DIR%\nsprpub\pr\include\md\_win95.h %TT_PATCH_DIR%\_win95.h.patch




REM js_CompareAndSwap:
patch -N %TT_MOZ_SRC_DIR%\js\src\jslock.c %TT_PATCH_DIR%\jslock.c.patch

REM NowCalibrate:
patch -N %TT_MOZ_SRC_DIR%\js\src\prmjtime.c %TT_PATCH_DIR%\prmjtime.c.patch

REM js double hashing:
patch -N %TT_MOZ_SRC_DIR%\js\src\jsdhash.c %TT_PATCH_DIR%\jsdhash.c.patch

REM Bug 453658, ExecuteREBytecode:
patch -N %TT_MOZ_SRC_DIR%\js\src\jsregexp.c %TT_PATCH_DIR%\jsregexp.c.patch

REM js_AllocStack, js_InternalInvoke:
patch -N %TT_MOZ_SRC_DIR%\js\src\jsinterp.c %TT_PATCH_DIR%\jsinterp.c.patch

REM huck to avoid bug of PGO:
patch -N %TT_MOZ_SRC_DIR%\js\src\jsinterp.h %TT_PATCH_DIR%\jsinterp.h.patch

REM str_indexOf:
patch -N %TT_MOZ_SRC_DIR%\js\src\jsstr.c %TT_PATCH_DIR%\jsstr.c.patch

REM js_strncpy:
patch -N %TT_MOZ_SRC_DIR%\js\src\jsstr.h %TT_PATCH_DIR%\jsstr.h.patch




REM gklayout:
patch -N %TT_MOZ_SRC_DIR%\layout\style\nsStyleUtil.cpp %TT_PATCH_DIR%\nsStyleUtil.cpp.patch
patch -N %TT_MOZ_SRC_DIR%\layout\style\nsRuleNode.h %TT_PATCH_DIR%\nsRuleNode.h.patch

REM libpixman:
patch -N %TT_MOZ_SRC_DIR%\gfx\cairo\libpixman\src\pixman-private.h %TT_PATCH_DIR%\pixman-private.h.patch
patch -N %TT_MOZ_SRC_DIR%\gfx\cairo\libpixman\src\pixman-edge.c %TT_PATCH_DIR%\pixman-edge.c.patch
patch -N %TT_MOZ_SRC_DIR%\gfx\cairo\libpixman\src\pixman-compose.c %TT_PATCH_DIR%\pixman-compose.c.patch
patch -N %TT_MOZ_SRC_DIR%\gfx\cairo\libpixman\src\pixman-utils.c %TT_PATCH_DIR%\pixman-utils.c.patch
patch -N %TT_MOZ_SRC_DIR%\gfx\cairo\libpixman\src\pixman-pict.c %TT_PATCH_DIR%\pixman-pict.c.patch
patch -N %TT_MOZ_SRC_DIR%\gfx\cairo\libpixman\src\pixman-mmx.h %TT_PATCH_DIR%\pixman-mmx.h.patch
patch -N %TT_MOZ_SRC_DIR%\gfx\cairo\libpixman\src\pixman-mmx.c %TT_PATCH_DIR%\pixman-mmx.c.patch
patch -N %TT_MOZ_SRC_DIR%\gfx\cairo\libpixman\src\pixman-combine.c %TT_PATCH_DIR%\pixman-combine.c.patch
patch -N %TT_MOZ_SRC_DIR%\gfx\cairo\libpixman\src\pixman-access.c %TT_PATCH_DIR%\pixman-access.c.patch
patch -N %TT_MOZ_SRC_DIR%\gfx\cairo\libpixman\src\pixman-transformed.c %TT_PATCH_DIR%\pixman-transformed.c.patch

REM cairo:
patch -N %TT_MOZ_SRC_DIR%\gfx\cairo\cairo\src\cairoint.h %TT_PATCH_DIR%\cairoint.h.patch

REM thebes:
patch -N %TT_MOZ_SRC_DIR%\gfx\thebes\src\gfxRect.cpp %TT_PATCH_DIR%\gfxRect.cpp.patch
patch -N %TT_MOZ_SRC_DIR%\gfx\thebes\public\gfxPoint.h %TT_PATCH_DIR%\gfxPoint.h.patch
patch -N %TT_MOZ_SRC_DIR%\gfx\src\thebes\nsThebesFontMetrics.cpp %TT_PATCH_DIR%\nsThebesFontMetrics.cpp.patch

REM thebes, scaled image cache:
patch -N %TT_MOZ_SRC_DIR%\gfx\src\thebes\nsThebesImage.cpp %TT_PATCH_DIR%\nsThebesImage.cpp.patch
patch -N %TT_MOZ_SRC_DIR%\gfx\src\thebes\nsThebesImage.h %TT_PATCH_DIR%\nsThebesImage.h.patch

REM disable -fp:fast with some functions:
patch -N %TT_MOZ_SRC_DIR%\gfx\src\nsRect.cpp %TT_PATCH_DIR%\nsRect.cpp.patch

REM optimize NSToCoordRound for -fp:fast and -arch:SSE options
patch -N %TT_MOZ_SRC_DIR%\gfx\public\nsCoord.h %TT_PATCH_DIR%\nsCoord.h.patch




REM content
patch -N %TT_MOZ_SRC_DIR%\content\base\src\nsContentUtils.cpp %TT_PATCH_DIR%\nsContentUtils.cpp.patch




REM use ATOM for window properties
patch -N %TT_MOZ_SRC_DIR%\modules\plugin\base\src\nsPluginNativeWindowWin.cpp %TT_PATCH_DIR%\nsPluginNativeWindowWin.cpp.patch
patch -N %TT_MOZ_SRC_DIR%\widget\src\windows\nsWindow.cpp %TT_PATCH_DIR%\nsWindow.cpp.patch




REM avoid bug of PGO:
patch -N %TT_MOZ_SRC_DIR%\db\sqlite3\src\Makefile.in %TT_PATCH_DIR%\sqlite3_Makefile.in.patch




REM disable warning C4624, C4952:
patch -N %TT_MOZ_SRC_DIR%\toolkit\library\Makefile.in %TT_PATCH_DIR%\toolkit_library_Makefile.in.patch




REM avoid an error LNK1120 for tete009 builds:
patch -N %TT_MOZ_SRC_DIR%\security\nss\lib\freebl\Makefile %TT_PATCH_DIR%\freebl_Makefile.patch
patch -N %TT_MOZ_SRC_DIR%\security\nss\lib\freebl\manifest.mn %TT_PATCH_DIR%\freebl_manifest.mn.patch




REM disable patches of bug 413019:
patch -N %TT_MOZ_SRC_DIR%\gfx\cairo\cairo\src\Makefile.in %TT_PATCH_DIR%\cairo_Makefile.in.patch
patch -N %TT_MOZ_SRC_DIR%\xpcom\reflect\xptcall\src\md\win32\Makefile.in %TT_PATCH_DIR%\xptcall_Makefile.in.patch
patch -N %TT_MOZ_SRC_DIR%\modules\libimg\png\Makefile.in %TT_PATCH_DIR%\png_Makefile.in.patch




REM delete PGO options:
patch -N %TT_MOZ_SRC_DIR%\xpcom\typelib\xpidl\Makefile.in %TT_PATCH_DIR%\xpidl_Makefile.in.patch
patch -N %TT_MOZ_SRC_DIR%\xpcom\typelib\xpidl\xpidl.c %TT_PATCH_DIR%\xpidl.c.patch
patch -N %TT_MOZ_SRC_DIR%\xpcom\typelib\xpt\tools\Makefile.in %TT_PATCH_DIR%\xpt_tools_Makefile.in.patch




REM jemalloc:
xcopy %TT_PATCH_DIR%\crtsp1_tt.diff %TT_MOZ_SRC_DIR%\memory\jemalloc\ /r /y
patch -N %TT_MOZ_SRC_DIR%\memory\jemalloc\jemalloc.c %TT_PATCH_DIR%\jemalloc.c.patch
patch -N %TT_MOZ_SRC_DIR%\memory\jemalloc\Makefile.in %TT_PATCH_DIR%\jemalloc_Makefile.in.patch
patch -N %TT_MOZ_SRC_DIR%\memory\jemalloc\build-crt.py %TT_PATCH_DIR%\build-crt.py.patch
patch -N %TT_MOZ_SRC_DIR%\memory\jemalloc\apply-ed-patches.pl %TT_PATCH_DIR%\apply-ed-patches.pl.patch
patch -N %TT_MOZ_SRC_DIR%\security\manager\Makefile.in %TT_PATCH_DIR%\security_manager_Makefile.in.patch



