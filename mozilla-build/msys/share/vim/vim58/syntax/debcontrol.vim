" Vim syntax file
" Language:	Debian control files
" Maintainer:	Wichert Akkerman <wakkerma@debian.org>
" Last Change:	30 April 2001

" Standard syntax initialization
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Everything that is not explicitly matched by the rules below
syn match debcontrolElse "^.*$"

" Define some common expressions we can use later on
syn match debcontrolArchitecture contained "\(all\|any\|alpha\|arm\|hppa\|i386\|m68k\|mips\|mipsel\|powerpc\|sh\|sheb\|sparc\|hurd-i386\)"
syn match debcontrolName contained "[a-z][a-z0-9+-]*"
syn match debcontrolPriority contained "\(extra\|important\|optional\|required\|standard\)"
syn match debcontrolSection contained "\(\(contrib\|non-free\)/\)\=\(admin\|base\|comm\|devel\|docs\|editors\|electronics\|games\|graphics\|hamradio\|interpreters\|libs\|mail\|math\|misc\|net\|news\|oldlibs\|otherosfs\|science\|shells\|sound\|tex\|text\|utils\|web\|x11\|debian-installer\)"
syn match debcontrolVariable contained "\${.\{-}}"

" An email address
syn match	debcontrolEmail	"[_=[:alnum:]\.+-]\+@[[:alnum:]\./\-]\+"
syn match	debcontrolEmail	"<.\{-}>"

" List of all legal keys
syn match debcontrolKey contained "^\(Source\|Package\|Section\|Priority\|Maintainer\|Build-Depends\|Standards-Version\|Pre-Depends\|Depends\|Recommends\|Suggests\|Provides\|Replaces\|Conflicts\|Essential\|Architecture\|Description\|Bugs\|Origin\): *"

" Fields for which we do strict syntax checking
syn region debcontrolStrictField start="^Architecture" end="$" contains=debcontrolKey,debcontrolArchitecture oneline
syn region debcontrolStrictField start="^\(Package\|Source\)" end="$" contains=debcontrolKey,debcontrolName oneline
syn region debcontrolStrictField start="^Priority" end="$" contains=debcontrolKey,debcontrolPriority oneline
syn region debcontrolStrictField start="^Section" end="$" contains=debcontrolKey,debcontrolSection oneline

" Catch-all for the other legal fields
syn region debcontrolField start="^\(Maintainer\|Build-Depends\|Standards-Version\|Pre-Depends\|Depends\|Recommends\|Suggests\|Provides\|Replaces\|Conflicts\|Essential\|Bugs\|Origin\):" end="$" contains=debcontrolKey,debcontrolVariable,debcontrolEmail oneline
syn region debcontrolMultiField start="^\(Description\):" skip="^ " end="^$"me=s-1 end="^[^ ]"me=s-1 contains=debcontrolKey

" Associate our matches and regions with pretty colours
if version >= 508 || !exists("did_debcontrol_syn_inits")
  if version < 508
    let did_debcontrol_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink debcontrolKey		Keyword
  HiLink debcontrolField	Normal
  HiLink debcontrolStrictField	Error
  HiLink debcontrolMultiField	Normal
  HiLink debcontrolArchitecture	Normal
  HiLink debcontrolName		Normal
  HiLink debcontrolPriority	Normal
  HiLink debcontrolSection	Normal
  HiLink debcontrolVariable	Identifier
  HiLink debcontrolEmail	Identifier
  HiLink debcontrolElse		Special

  delcommand HiLink
endif

let b:current_syntax = "debcontrol"

" vim: ts=8 sw=2
