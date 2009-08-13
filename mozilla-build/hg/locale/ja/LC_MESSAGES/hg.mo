Þ    t      ¼     \      Ð	  ¡  Ñ	  <  s    °  Ñ  :  ­    «  º'  ß	  f*     F4     a4     o4     4     4     ®4  2   ¿4  *   ò4     5     55     B5     O5     e5     x5  '   5     »5     Ù5     õ5  	   6  X  6    g8  (  ;  
   °<     »<     ==  *   J=  (   u=     =  $   °=  (   Õ=  2   þ=  ,   1>  *   ^>  $   >  à  ®>     @  c  ¢@  R  D  X  YE  Ã  ²H  .  vL  Ü   ¥Q     R  ´  R  +  GT  !   sY     Y  /  ©Y  ¢   ÙZ  i  |[  ?  æ]  ï  &e  0  g     Gi  #   bi     i  /   i  	   Èi  L  Òi    l  (   +n  $   Tn      yn  m   n    o     §p  H  ¸p    t     w    ©w  %   «y    Ñy  º  V  Æ       Ø  ë   á    Í     Õ    î  $  n  W    m  ë    Y    ç  /  ý    -  º   ®  {  i  
   å  ±  ð  g  ¢   $   
¢  ¾  /¢     î£  $   
¤    /¤  =   D¨  6   ¨  ¬  ¹¨  *   f­  5   ­  +   Ç­  B   ó­     6®  "   S®  )   v®      ®  P  ¿®  w  °  o  ±  c	  ø¶  <  \À  ê  Ç    Í    #Ú  ¢  ©Þ  "   Lï     oï     |ï     ï  :   ­ï  #   èï  <   ð  6   Ið  (   ð     ©ð     ¶ð     Ãð     Ðð  (   ìð  <   ñ     Rñ     qñ     ñ     ¬ñ    ¿ñ  J  ]õ  Ü  ¨ù     û     û     ü  I   /ü  V   yü     Ðü  ]   æü  H   Dý  Q   ý  T   ßý  I   4þ  K   ~þ  À  Êþ           - ÿ  A ª  A ^  ì   K    ä      £ '   5$    ]$ Ö  s$ 2  J&   }' ü	  + 5  5 ×  µ8 )   ; ,   ·; 1   ä; i   <    < Ù  < ®  l? 0   B <   LB (   B    ²B ^  GC    ¦E ¤  ÀE ò  eJ    XO ]  oO Q   ÍR U  S ¼  u[ $  2^    Wb M  gb È  µc -   ~i   ¬i y  Dm   ¾o   Àq   Úx ó  êz ×  Þ| Æ  ¶~   } ¤      ( '  D ä  l B   Q Ä   0   Y :      Å ^   I N   ¨ y  ÷ G   q U   ¹ ;     _   K     «  6   Ë  0   ¡ 9   3¡   m¡                   f       b          ^   _       %   S   G       7   &       D   q       m       L   R         -   Y      Q   5      :                         A   ?   /   r          X      H   "       i       h   '   j   t           0      ,      
   n   e   a       W      E                \               .   V   o       (   C   3   1              !                     N   	   6       >   U   c   s       k           O   $      Z   ;   *   M       2   #       4   ]   `   F          g         [   d   J          B      =       P   K      )   T      9   I      p       8   l       <       @   +    
    Mercurial accepts several notations for identifying individual
    revisions.

    A plain integer is treated as a revision number. Negative
    integers are treated as offsets from the tip, with -1 denoting the
    tip.

    A 40-digit hexadecimal string is treated as a unique revision
    identifier.

    A hexadecimal string less than 40 characters long is treated as a
    unique revision identifier, and referred to as a short-form
    identifier. A short-form identifier is only valid if it is the
    prefix of one full-length identifier.

    Any other string is treated as a tag name, which is a symbolic
    name associated with a revision identifier. Tag names may not
    contain the ":" character.

    The reserved name "tip" is a special tag that always identifies
    the most recent revision.

    The reserved name "null" indicates the null revision. This is the
    revision of an empty repository, and the parent of revision 0.

    The reserved name "." indicates the working directory parent. If
    no working directory is checked out, it is equivalent to null.
    If an uncommitted merge is in progress, "." is the revision of
    the first parent.
     
    Mercurial accepts several notations for identifying one or more
    files at a time.

    By default, Mercurial treats filenames as shell-style extended
    glob patterns.

    Alternate pattern notations must be specified explicitly.

    To use a plain path name without any pattern matching, start a
    name with "path:".  These path names must match completely, from
    the root of the current repository.

    To use an extended glob, start a name with "glob:".  Globs are
    rooted at the current directory; a glob such as "*.c" will match
    files ending in ".c" in the current directory only.

    The supported glob syntax extensions are "**" to match any string
    across path separators, and "{a,b}" to mean "a or b".

    To use a Perl/Python regular expression, start a name with "re:".
    Regexp pattern matching is anchored at the root of the repository.

    Plain examples:

    path:foo/bar   a name bar in a directory named foo in the root of
                   the repository
    path:path:name a file or directory named "path:name"

    Glob examples:

    glob:*.c       any name ending in ".c" in the current directory
    *.c            any name ending in ".c" in the current directory
    **.c           any name ending in ".c" in the current directory, or
                   any subdirectory
    foo/*.c        any name ending in ".c" in the directory foo
    foo/**.c       any name ending in ".c" in the directory foo, or any
                   subdirectory

    Regexp examples:

    re:.*\.c$      any name ending in ".c", anywhere in the repository

     
    Mercurial's default format for showing changes between two versions
    of a file is compatible with the unified format of GNU diff, which
    can be used by GNU patch and many other standard tools.

    While this standard format is often enough, it does not encode the
    following information:

     - executable status
     - copy or rename information
     - changes in binary files
     - creation or deletion of empty files

    Mercurial also supports the extended diff format from the git VCS
    which addresses these limitations. The git diff format is not
    produced by default because there are very few tools which
    understand this format.

    This means that when generating diffs from a Mercurial repository
    (e.g. with "hg export"), you should be careful about things like
    file copies and renames or other things mentioned above, because
    when applying a standard diff to a different repository, this extra
    information is lost. Mercurial's internal operations (like push and
    pull) are not affected by this, because they use an internal binary
    format for communicating changes.

    To make Mercurial produce the git extended diff format, use the
    --git option available for many commands, or set 'git = True' in the
    [diff] section of your hgrc. You do not need to set this option when
    importing diffs in this format or using them in the mq extension.
     
    Some commands allow the user to specify a date, e.g.:
    * backout, commit, import, tag: Specify the commit date.
    * log, revert, update: Select revision(s) by date.

    Many date formats are valid. Here are some examples:

    "Wed Dec 6 13:18:29 2006" (local timezone assumed)
    "Dec 6 13:18 -0600" (year assumed, time offset provided)
    "Dec 6 13:18 UTC" (UTC and GMT are aliases for +0000)
    "Dec 6" (midnight)
    "13:18" (today assumed)
    "3:39" (3:39AM assumed)
    "3:39pm" (15:39)
    "2006-12-06 13:18:29" (ISO 8601 format)
    "2006-12-6 13:18"
    "2006-12-6"
    "12-6"
    "12/6"
    "12/6/6" (Dec 6 2006)

    Lastly, there is Mercurial's internal format:

    "1165432709 0" (Wed Dec 6 13:18:29 2006 UTC)

    This is the internal representation format for dates. unixtime is
    the number of seconds since the epoch (1970-01-01 00:00 UTC). offset
    is the offset of the local timezone, in seconds west of UTC (negative
    if the timezone is east of UTC).

    The log command also accepts date ranges:

    "<{date}" - on or before a given date
    ">{date}" - on or after a given date
    "{date} to {date}" - a date range, inclusive
    "-{days}" - within a given number of days of today
     
    Valid URLs are of the form:

      local/filesystem/path (or file://local/filesystem/path)
      http://[user[:pass]@]host[:port]/[path]
      https://[user[:pass]@]host[:port]/[path]
      ssh://[user[:pass]@]host[:port]/[path]

    Paths in the local filesystem can either point to Mercurial
    repositories or to bundle files (as created by 'hg bundle' or
    'hg incoming --bundle').

    An optional identifier after # indicates a particular branch, tag,
    or changeset to deal with in the remote repository.

    Some features, such as pushing to http:// and https:// URLs are
    only possible if the feature is explicitly enabled on the
    remote Mercurial server.

    Some notes about using SSH with Mercurial:
    - SSH requires an accessible shell account on the destination machine
      and a copy of hg in the remote path or specified with as remotecmd.
    - path is relative to the remote user's home directory by default.
      Use an extra slash at the start of a path to specify an absolute path:
        ssh://example.com//tmp/repository
    - Mercurial doesn't use its own compression via SSH; the right thing
      to do is to configure it in your ~/.ssh/config, e.g.:
        Host *.mylocalnetwork.example.com
          Compression no
        Host *
          Compression yes
      Alternatively specify "ssh -C" as your ssh command in your hgrc or
      with the --ssh command line option.

    These urls can all be stored in your hgrc with path aliases under the
    [paths] section like so:
    [paths]
    alias1 = URL1
    alias2 = URL2
    ...

    You can then use the alias for any command that uses a url (for example
    'hg pull alias1' would pull from the 'alias1' path).

    Two path aliases are more important because they are used as defaults
    when you do not provide the url to a command:

    default:
      When you create a repository with hg clone, the clone command saves
      the location of the source repository as the 'default' path. This is
      then used when you omit a path from the push and pull commands.

    default-push:
      The push command will look for a path named 'default-push', and
      prefer it over 'default' if both are defined.
     
    When Mercurial accepts more than one revision, they may be
    specified individually, or provided as a continuous range,
    separated by the ":" character.

    The syntax of range notation is [BEGIN]:[END], where BEGIN and END
    are revision identifiers. Both BEGIN and END are optional. If
    BEGIN is not specified, it defaults to revision number 0. If END
    is not specified, it defaults to the tip. The range ":" thus
    means "all revisions".

    If BEGIN is greater than END, revisions are treated in reverse
    order.

    A range acts as a closed interval. This means that a range of 3:5
    gives 3, 4 and 5. Similarly, a range of 4:2 gives 4, 3, and 2.
     
HG::
    Path to the 'hg' executable, automatically passed when running hooks,
    extensions or external tools. If unset or empty, an executable named
    'hg' (with com/exe/bat/cmd extension on Windows) is searched.

HGEDITOR::
    This is the name of the editor to use when committing. See EDITOR.

    (deprecated, use .hgrc)

HGENCODING::
    This overrides the default locale setting detected by Mercurial.
    This setting is used to convert data including usernames,
    changeset descriptions, tag names, and branches. This setting can
    be overridden with the --encoding command-line option.

HGENCODINGMODE::
    This sets Mercurial's behavior for handling unknown characters
    while transcoding user inputs. The default is "strict", which
    causes Mercurial to abort if it can't translate a character. Other
    settings include "replace", which replaces unknown characters, and
    "ignore", which drops them. This setting can be overridden with
    the --encodingmode command-line option.

HGMERGE::
    An executable to use for resolving merge conflicts. The program
    will be executed with three arguments: local file, remote file,
    ancestor file.

    (deprecated, use .hgrc)

HGRCPATH::
    A list of files or directories to search for hgrc files.  Item
    separator is ":" on Unix, ";" on Windows.  If HGRCPATH is not set,
    platform default search path is used.  If empty, only .hg/hgrc of
    current repository is read.

    For each element in path, if a directory, all entries in directory
    ending with ".rc" are added to path.  Else, element itself is
    added to path.

HGUSER::
    This is the string used for the author of a commit.

    (deprecated, use .hgrc)

EMAIL::
    If HGUSER is not set, this will be used as the author for a commit.

LOGNAME::
    If neither HGUSER nor EMAIL is set, LOGNAME will be used (with
    '@hostname' appended) as the author value for a commit.

VISUAL::
    This is the name of the editor to use when committing. See EDITOR.

EDITOR::
    Sometimes Mercurial needs to open a text file in an editor
    for a user to modify, for example when writing commit messages.
    The editor it uses is determined by looking at the environment
    variables HGEDITOR, VISUAL and EDITOR, in that order. The first
    non-empty one is chosen. If all of them are empty, the editor
    defaults to 'vi'.

PYTHONPATH::
    This is used by Python to find imported modules and may need to be set
    appropriately if Mercurial is not installed system-wide.
     
additional help topics:

 
aliases: %s
 
enabled extensions:

  (default: %s) %s is not a parent of %s %s: binary file
 (use "backout --merge" if you want to auto-merge)
 ** Mercurial Distributed SCM (version %s)
 Backed out changeset %s Date Formats Diff Formats Environment Variables File Name Patterns Mercurial Distributed SCM
 Mercurial Distributed SCM (version %s)
 Specifying Multiple Revisions Specifying Single Revisions Template Usage Url Paths add all new files, delete all missing files

    Add all new files and remove all missing files from the repository.

    New files are ignored if they match any of the patterns in .hgignore. As
    with add, these changes take effect at the next commit.

    Use the -s option to detect renamed files. With a parameter > 0,
    this compares every removed file with every added file and records
    those similar enough as renames. This option takes a percentage
    between 0 (disabled) and 100 (files must be identical) as its
    parameter. Detecting renamed files this way can be expensive.
     add one or more tags for the current or given revision

    Name a particular revision using <name>.

    Tags are used to name particular revisions of the repository and are
    very useful to compare different revisions, to go back to significant
    earlier versions or to mark branch points as releases, etc.

    If no revision is given, the parent of the working directory is used,
    or tip if no revision is checked out.

    To facilitate version control, distribution, and merging of tags,
    they are stored as a file named ".hgtags" which is managed
    similarly to other project files and can be hand-edited if
    necessary. The file '.hg/localtags' is used for local tags (not
    shared among repositories).

    See 'hg help dates' for a list of formats valid for -d/--date.
     add the specified files on the next commit

    Schedule files to be version controlled and added to the repository.

    The files will be added to the repository at the next commit. To
    undo an add before that, see hg revert.

    If no names are given, add all files in the repository.
     adding %s
 apply one or more changegroup files

    Apply one or more compressed changegroup files generated by the
    bundle command.
     applying %s
 at least one file name or pattern required at least one of -n/-c is required for -l basic commands:

 cannot archive plain files to stdout cannot back out a change with no parents cannot back out a merge changeset without --parent cannot back out change on a different branch cannot use --parent on non-merge changeset changeset %s backs out changeset %s
 commit the specified files or all outstanding changes

    Commit changes to the given files into the repository.

    If a list of files is omitted, all changes reported by "hg status"
    will be committed.

    If you are committing the result of a merge, do not provide any
    file names or -I/-X filters.

    If no commit message is specified, the configured editor is started to
    enter a message.

    See 'hg help dates' for a list of formats valid for -d/--date.
     comparing with %s
 create a changegroup file

    Generate a compressed changegroup file collecting changesets not
    found in the other repository.

    If no destination repository is specified the destination is
    assumed to have all the nodes specified by one or more --base
    parameters. To create a bundle containing all changesets, use
    --all (or --base null). To change the compression method applied,
    use the -t option (by default, bundles are compressed using bz2).

    The bundle file can then be transferred using conventional means and
    applied to another repository with the unbundle or pull command.
    This is useful when direct push and pull are not available or when
    exporting an entire repository is undesirable.

    Applying bundles preserves all changeset contents including
    permissions, copy/rename information, and revision history.
     create a new repository in the given directory

    Initialize a new repository in the given directory. If the given
    directory does not exist, it is created.

    If no directory is given, the current directory is used.

    It is possible to specify an ssh:// URL as the destination.
    See 'hg help urls' for more information.
     create unversioned archive of a repository revision

    By default, the revision used is the parent of the working
    directory; use "-r" to specify a different revision.

    To specify the type of archive to create, use "-t". Valid
    types are:

    "files" (default): a directory full of files
    "tar": tar archive, uncompressed
    "tbz2": tar archive, compressed using bzip2
    "tgz": tar archive, compressed using gzip
    "uzip": zip archive, uncompressed
    "zip": zip archive, compressed using deflate

    The exact name of the destination archive or directory is given
    using a format string; see "hg help export" for details.

    Each member added to an archive file has a directory prefix
    prepended. Use "-p" to specify a format string for the prefix.
    The default is the basename of the archive, with suffixes removed.
     diff repository (or selected files)

    Show differences between revisions for the specified files.

    Differences between files are shown using the unified diff format.

    NOTE: diff may generate unexpected results for merges, as it will
    default to comparing against the working directory's first parent
    changeset if no revisions are specified.

    When two revision arguments are given, then changes are shown
    between those revisions. If only one revision is specified then
    that revision is compared to the working directory, and, when no
    revisions are specified, the working directory files are compared
    to its parent.

    Without the -a option, diff will avoid generating diffs of files
    it detects as binary. With -a, diff will generate a diff anyway,
    probably with undesirable results.

    Use the --git option to generate diffs in the git extended diff
    format. Read the diffs help topic for more information.
     dump the header and diffs for one or more changesets

    Print the changeset header and diffs for one or more revisions.

    The information shown in the changeset header is: author,
    changeset hash, parent(s) and commit comment.

    NOTE: export may generate unexpected diff output for merge changesets,
    as it will compare the merge changeset against its first parent only.

    Output may be to a file, in which case the name of the file is
    given using a format string. The formatting rules are as follows:

    %%   literal "%" character
    %H   changeset hash (40 bytes of hexadecimal)
    %N   number of patches being generated
    %R   changeset revision number
    %b   basename of the exporting repository
    %h   short-form changeset hash (12 bytes of hexadecimal)
    %n   zero-padded sequence number, starting at 1
    %r   zero-padded changeset revision number

    Without the -a option, export will avoid generating diffs of files
    it detects as binary. With -a, export will generate a diff anyway,
    probably with undesirable results.

    Use the --git option to generate diffs in the git extended diff
    format. Read the diffs help topic for more information.

    With the --switch-parent option, the diff will be against the second
    parent. It can be useful to review a merge.
     export the repository via HTTP

    Start a local HTTP repository browser and pull server.

    By default, the server logs accesses to stdout and errors to
    stderr. Use the "-A" and "-E" options to log to files.
     global options: identify the working copy or specified revision

    With no revision, print a summary of the current state of the repo.

    With a path, do a lookup in another repository.

    This summary identifies the repository state using one or two parent
    hash identifiers, followed by a "+" if there are uncommitted changes
    in the working directory, a list of tags for this revision and a branch
    name for non-default branches.
     import an ordered set of patches

    Import a list of patches and commit them individually.

    If there are outstanding changes in the working directory, import
    will abort unless given the -f flag.

    You can import a patch straight from a mail message. Even patches
    as attachments work (body part must be type text/plain or
    text/x-patch to be used). From and Subject headers of email
    message are used as default committer and commit message. All
    text/plain body parts before first diff are added to commit
    message.

    If the imported patch was generated by hg export, user and description
    from patch override values from message headers and body. Values
    given on command line with -m and -u override these.

    If --exact is specified, import will set the working directory
    to the parent of each patch before applying it, and will abort
    if the resulting changeset has a different ID than the one
    recorded in the patch. This may happen due to character set
    problems or other deficiencies in the text patch format.

    With --similarity, hg will attempt to discover renames and copies
    in the patch in the same way as 'addremove'.

    To read a patch from standard input, use patch name "-".
    See 'hg help dates' for a list of formats valid for -d/--date.
     limit number of changes displayed list of commands:

 list repository named branches

    List the repository's named branches, indicating which ones are
    inactive. If active is specified, only show active branches.

    A branch is considered active if it contains repository heads.

    Use the command 'hg update' to switch to an existing branch.
     list repository tags

    This lists both regular and local tags. When the -v/--verbose switch
    is used, a third column "local" is printed for local tags.
     locate files matching specific patterns

    Print all files under Mercurial control whose names match the
    given patterns.

    This command searches the entire repository by default. To search
    just the current directory and its subdirectories, use
    "--include .".

    If no patterns are given to match, this command prints all file
    names.

    If you want to feed the output of this command into the "xargs"
    command, use the "-0" option to both this command and "xargs".
    This will avoid the problem of "xargs" treating single filenames
    that contain white space as multiple filenames.
     make a copy of an existing repository

    Create a copy of an existing repository in a new directory.

    If no destination directory name is specified, it defaults to the
    basename of the source.

    The location of the source is added to the new repository's
    .hg/hgrc file, as the default to be used for future pulls.

    For efficiency, hardlinks are used for cloning whenever the source
    and destination are on the same filesystem (note this applies only
    to the repository data, not to the checked out files). Some
    filesystems, such as AFS, implement hardlinking incorrectly, but
    do not report errors. In these cases, use the --pull option to
    avoid hardlinking.

    In some cases, you can clone repositories and checked out files
    using full hardlinks with

      $ cp -al REPO REPOCLONE

    This is the fastest way to clone, but it is not always safe.  The
    operation is not atomic (making sure REPO is not modified during
    the operation is up to you) and you have to make sure your editor
    breaks hardlinks (Emacs and most Linux Kernel tools do so).  Also,
    this is not compatible with certain extensions that place their
    metadata under the .hg directory, such as mq.

    If you use the -r option to clone up to a specific revision, no
    subsequent revisions will be present in the cloned repository.
    This option implies --pull, even on local repositories.

    If the -U option is used, the new clone will contain only a repository
    (.hg) and no working copy (the working copy parent is the null revision).

    See 'hg help urls' for valid source format details.

    It is possible to specify an ssh:// URL as the destination, but no
    .hg/hgrc and working directory will be created on the remote side.
    Look at the help text for urls for important details about ssh:// URLs.
     mark files as copied for the next commit

    Mark dest as having copies of source files. If dest is a
    directory, copies are put in that directory. If dest is a file,
    there can only be one source.

    By default, this command copies the contents of files as they
    stand in the working directory. If invoked with --after, the
    operation is recorded, but no copying is performed.

    This command takes effect in the next commit. To undo a copy
    before that, see hg revert.
     merge working directory with another revision

    Merge the contents of the current working directory and the
    requested revision. Files that changed between either parent are
    marked as changed for the next commit and a commit must be
    performed before any further updates are allowed.

    If no revision is specified, the working directory's parent is a
    head revision, and the current branch contains exactly one other head,
    the other head is merged with by default. Otherwise, an explicit
    revision to merge with must be provided.
     merging with changeset %s
 name of file to write process ID to no changes found
 no working directory: please specify a revision options:
 output the current or given revision of files

    Print the specified files as they were at the given revision.
    If no revision is given, the parent of the working directory is used,
    or tip if no revision is checked out.

    Output may be to a file, in which case the name of the file is
    given using a format string. The formatting rules are the same as
    for the export command, with the following additions:

    %s   basename of file being printed
    %d   dirname of file being printed, or '.' if in repo root
    %p   root-relative path name of file being printed
     output the current or given revision of the project manifest

    Print a list of version controlled files for the given revision.
    If no revision is given, the parent of the working directory is used,
    or tip if no revision is checked out.

    The manifest is the list of files being version controlled. If no revision
    is given then the first parent of the working directory is used.

    With -v flag, print file permissions, symlink and executable bits. With
    --debug flag, print file revision hashes.
     output version and copyright information please specify a revision to backout please specify just one revision print the root (top) of the current working dir

    Print the root directory of the current repository.
     pull changes from the specified source

    Pull changes from a remote repository to a local one.

    This finds all changes from the repository at the specified path
    or URL and adds them to the local repository. By default, this
    does not update the copy of the project in the working directory.

    If SOURCE is omitted, the 'default' path will be used.
    See 'hg help urls' for more information.
     pulling from %s
 push changes to the specified destination

    Push changes from the local repository to the given destination.

    This is the symmetrical operation for pull. It helps to move
    changes from the current repository to a different one. If the
    destination is local this is identical to a pull in that directory
    from the current one.

    By default, push will refuse to run if it detects the result would
    increase the number of remote heads. This generally indicates the
    the client has forgotten to pull and merge before pushing.

    If -r is used, the named changeset and all its ancestors will be pushed
    to the remote repository.

    Look at the help text for urls for important details about ssh:// URLs.
    If DESTINATION is omitted, a default path will be used.
    See 'hg help urls' for more information.
     remove the specified files on the next commit

    Schedule the indicated files for removal from the repository.

    This only removes files from the current branch, not from the entire
    project history. -A can be used to remove only files that have already
    been deleted, -f can be used to force deletion, and -Af can be used
    to remove files from the next revision without deleting them.

    The following table details the behavior of remove for different file
    states (columns) and option combinations (rows). The file states are
    Added, Clean, Modified and Missing (as reported by hg status). The
    actions are Warn, Remove (from branch) and Delete (from disk).

           A  C  M  !
    none   W  RD W  R
    -f     R  RD RD R
    -A     W  W  W  R
    -Af    R  R  R  R

    This command schedules the files to be removed at the next commit.
    To undo a remove before that, see hg revert.
     removing %s
 rename files; equivalent of copy + remove

    Mark dest as copies of sources; mark sources for deletion. If
    dest is a directory, copies are put in that directory. If dest is
    a file, there can only be one source.

    By default, this command copies the contents of files as they
    stand in the working directory. If invoked with --after, the
    operation is recorded, but no copying is performed.

    This command takes effect in the next commit. To undo a rename
    before that, see hg revert.
     repository root cannot be destination restore individual files or dirs to an earlier state

    (use update -r to check out earlier revisions, revert does not
    change the working dir parents)

    With no revision specified, revert the named files or directories
    to the contents they had in the parent of the working directory.
    This restores the contents of the affected files to an unmodified
    state and unschedules adds, removes, copies, and renames. If the
    working directory has two parents, you must explicitly specify the
    revision to revert to.

    Using the -r option, revert the given files or directories to their
    contents as of a specific revision. This can be helpful to "roll
    back" some or all of an earlier change.
    See 'hg help dates' for a list of formats valid for -d/--date.

    Revert modifies the working directory. It does not commit any
    changes, or change the parent of the working directory. If you
    revert to a revision other than the parent of the working
    directory, the reverted files will thus appear modified
    afterwards.

    If a file has been deleted, it is restored. If the executable
    mode of a file was changed, it is reset.

    If names are given, all files matching the names are reverted.
    If no arguments are given, no files are reverted.

    Modified files are saved with a .orig suffix before reverting.
    To disable these backups, use --no-backup.
     retry file merges from a merge or update

    This command will cleanly retry unresolved file merges using file
    revisions preserved from the last update or merge. To attempt to
    resolve all unresolved files, use the -a switch.

    This command will also allow listing resolved files and manually
    marking and unmarking files as resolved.

    The codes used to show the status of files are:
    U = unresolved
    R = resolved
     reverse effect of earlier changeset

    Commit the backed out changes as a new changeset. The new
    changeset is a child of the backed out changeset.

    If you back out a changeset other than the tip, a new head is
    created. This head will be the new tip and you should merge this
    backout changeset with another head (current one by default).

    The --merge option remembers the parent of the working directory
    before starting the backout, then merges the new head with that
    changeset afterwards. This saves you from doing the merge by
    hand. The result of this merge is not committed, as for a normal
    merge.

    See 'hg help dates' for a list of formats valid for -d/--date.
     revision roll back an interrupted transaction

    Recover from an interrupted commit or pull.

    This command tries to fix the repository status after an interrupted
    operation. It should only be necessary when Mercurial suggests it.
     roll back the last transaction

    This command should be used with care. There is only one level of
    rollback, and there is no way to undo a rollback. It will also
    restore the dirstate at the time of the last transaction, losing
    any dirstate changes since that time.

    Transactions are used to encapsulate the effects of all commands
    that create new changesets or propagate existing changesets into a
    repository. For example, the following commands are transactional,
    and their effects can be rolled back:

      commit
      import
      pull
      push (with this repository as destination)
      unbundle

    This command is not intended for use on public repositories. Once
    changes are visible for pull by other users, rolling a transaction
    back locally is ineffective (someone else may already have pulled
    the changes). Furthermore, a race is possible with readers of the
    repository; for example an in-progress pull from the repository
    may fail if a rollback is performed.
     run server in background search for a pattern in specified files and revisions

    Search revisions of files for a regular expression.

    This command behaves differently than Unix grep. It only accepts
    Python/Perl regexps. It searches repository history, not the
    working directory. It always prints the revision number in which
    a match appears.

    By default, grep only prints output for the first revision of a
    file in which it finds a match. To get it to print every revision
    that contains a change in match status ("-" for a match that
    becomes a non-match, or "+" for a non-match that becomes a match),
    use the --all flag.
     set or show the current branch name

    With no argument, show the current branch name. With one argument,
    set the working directory branch name (the branch does not exist in
    the repository until the next commit).

    Unless --force is specified, branch will not let you set a
    branch name that shadows an existing branch.

    Use --clean to reset the working directory branch to that of the
    parent of the working directory, negating a previous branch change.

    Use the command 'hg update' to switch to an existing branch.
     show aliases for remote repositories

    Show definition of symbolic path name NAME. If no name is given, show
    definition of available names.

    Path names are defined in the [paths] section of /etc/mercurial/hgrc
    and $HOME/.hgrc. If run inside a repository, .hg/hgrc is used, too.

    See 'hg help urls' for more information.
     show changed files in the working directory

    Show status of files in the repository. If names are given, only
    files that match are shown. Files that are clean or ignored or
    source of a copy/move operation, are not listed unless -c (clean),
    -i (ignored), -C (copies) or -A is given. Unless options described
    with "show only ..." are given, the options -mardu are used.

    Option -q/--quiet hides untracked (unknown and ignored) files
    unless explicitly requested with -u/--unknown or -i/-ignored.

    NOTE: status may appear to disagree with diff if permissions have
    changed or a merge has occurred. The standard diff format does not
    report permission changes and diff only reports changes relative
    to one merge parent.

    If one revision is given, it is used as the base revision.
    If two revisions are given, the difference between them is shown.

    The codes used to show the status of files are:
    M = modified
    A = added
    R = removed
    C = clean
    ! = deleted, but still tracked
    ? = not tracked
    I = ignored
      = the previous added file was copied from here
     show changeset information per file line

    List changes in files, showing the revision id responsible for each line

    This command is useful to discover who did a change or when a change took
    place.

    Without the -a option, annotate will avoid processing files it
    detects as binary. With -a, annotate will generate an annotation
    anyway, probably with undesirable results.
     show changesets not found in destination

    Show changesets not found in the specified destination repository or
    the default push location. These are the changesets that would be pushed
    if a push was requested.

    See pull for valid destination format details.
     show combined config settings from all hgrc files

    With no args, print names and values of all config items.

    With one arg of the form section.name, print just the value of
    that config item.

    With multiple args, print names and values of all config items
    with matching section names. show current repository heads or show branch heads

    With no arguments, show all repository head changesets.

    If branch or revisions names are given this will show the heads of
    the specified branches or the branches those revisions are tagged
    with.

    Repository "heads" are changesets that don't have child
    changesets. They are where development generally takes place and
    are the usual targets for update and merge operations.

    Branch heads are changesets that have a given branch tag, but have
    no child changesets with that tag. They are usually where
    development on the given branch takes place.
     show help for a given topic or a help overview

    With no arguments, print a list of commands and short help.

    Given a topic, extension, or command name, print help for that topic. show new changesets found in source

    Show new changesets found in the specified path/URL or the default
    pull location. These are the changesets that would be pulled if a pull
    was requested.

    For remote repository, using --bundle avoids downloading the changesets
    twice if the incoming is followed by a pull.

    See pull for valid source format details.
     show patch show revision history of entire repository or files

    Print the revision history of the specified files or the entire
    project.

    File history is shown without following rename or copy history of
    files. Use -f/--follow with a file name to follow history across
    renames and copies. --follow without a file name will only show
    ancestors or descendants of the starting revision. --follow-first
    only follows the first parent of merge revisions.

    If no revision range is specified, the default is tip:0 unless
    --follow is set, in which case the working directory parent is
    used as the starting revision.

    See 'hg help dates' for a list of formats valid for -d/--date.

    By default this command outputs: changeset id and hash, tags,
    non-trivial parents, user, date and time, and a summary for each
    commit. When the -v/--verbose switch is used, the list of changed
    files and full commit message is shown.

    NOTE: log -p may generate unexpected diff output for merge
    changesets, as it will compare the merge changeset against its
    first parent only. Also, the files: list will only reflect files
    that are different from BOTH parents.

     show the parents of the working dir or revision

    Print the working directory's parent revisions. If a
    revision is given via --rev, the parent of that revision
    will be printed. If a file argument is given, revision in
    which the file was last changed (before the working directory
    revision or the argument to --rev if given) is printed.
     show the specified revision or range show the tip revision

    The tip revision (usually just called the tip) is the most
    recently added changeset in the repository, the most recently
    changed head.

    If you have just made a commit, that commit will be the tip. If
    you have just pulled changes from another repository, the tip of
    that repository becomes the current tip. The "tip" tag is special
    and cannot be renamed or assigned to a different changeset.
     similarity must be a number similarity must be between 0 and 100 subdivision search of changesets

    This command helps to find changesets which introduce problems.
    To use, mark the earliest changeset you know exhibits the problem
    as bad, then mark the latest changeset which is free from the
    problem as good. Bisect will update your working directory to a
    revision for testing (unless the --noupdate option is specified).
    Once you have performed tests, mark the working directory as bad
    or good and bisect will either update to another candidate changeset
    or announce that it has found the bad revision.

    As a shortcut, you can also use the revision argument to mark a
    revision as good or bad without checking it out first.

    If you supply a command it will be used for automatic bisection. Its exit
    status will be used as flag to mark revision as bad or good. In case exit
    status is 0 the revision is marked as good, 125 - skipped, 127 (command not
    found) - bisection will be aborted and any other status bigger than 0 will
    mark revision as bad.
     the backout changeset is a new head - do not forget to merge
 uncommitted merge - please provide a specific revision update working directory

    Update the repository's working directory to the specified revision,
    or the tip of the current branch if none is specified. Use null as
    the revision to remove the working copy (like 'hg clone -U').

    When the working dir contains no uncommitted changes, it will be
    replaced by the state of the requested revision from the repo.  When
    the requested revision is on a different branch, the working dir
    will additionally be switched to that branch.

    When there are uncommitted changes, use option -C to discard them,
    forcibly replacing the state of the working dir with the requested
    revision.

    When there are uncommitted changes and option -C is not used, and
    the parent revision and requested revision are on the same branch,
    and one of them is an ancestor of the other, then the new working
    directory will contain the requested revision merged with the
    uncommitted changes.  Otherwise, the update will fail with a
    suggestion to use 'merge' or 'update -C' instead.

    If you want to update just one file to an older revision, use revert.

    See 'hg help dates' for a list of formats valid for --date.
     use "hg -v help %s" to show global options use "hg -v help%s" to show aliases and global options use "hg help" for the full list of commands use "hg help" for the full list of commands or "hg -v" for details use git extended diff format use pull protocol to copy metadata use uncompressed transfer (fast over LAN) used internally by daemon mode verify the integrity of the repository

    Verify the integrity of the current repository.

    This will perform an extensive check of the repository's
    integrity, validating the hashes and checksums of each entry in
    the changelog, manifest, and tracked files, as well as the
    integrity of their crosslinks and indices.
     Project-Id-Version: Mercurial
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2009-02-21 01:58+0900
PO-Revision-Date: 2009-02-21 02:00+0900
Last-Translator: FUJIWARA Katsunori <foozy@lares.dti.ne.jp>
Language-Team: Japanese
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Generated-By: pygettext.py 1.5
Plural-Forms: nplurals=1; plural=0;
 
    Mercurial ã¯ãåãã®ãªãã¸ã§ã³ãè­å¥ããè¨æ³ãå¹¾ã¤ãç¨æãã¦ãã¾ãã

    æ´æ°å¤ã¯ããªãã¸ã§ã³çªå·ãã¨ã¿ãªããã¾ããè² å¤ã¯ãtip ããã®è·é¢ã
    è¡¨ãã¾ã(-1 ã¯ tip ãè¡¨ãã¾ã)ã

    40æ¡ã®16é²æå­åã¯ãä¸æãªããªãã¸ã§ã³è­å¥å­ãã¨ã¿ãªããã¾ãã

    40æ¡æªæºã®16é²æå­åã¯ãä¸æãªããªãã¸ã§ã³è­å¥å­ãã®ç­ç¸®å½¢å¼ã¨
    ã¿ãªããã¾ããç­ç¸®å½¢å¼ã®è­å¥å­ã¯ãå¯ä¸ã®å®å¨é·ã®è­å¥å­ã¨åæ¹ä¸è´ãã
    å ´åã«ã®ã¿æå¹ã§ãã

    ããä»¥å¤ã®æå­åã¯ããªãã¸ã§ã³è­å¥å­ã«é¢é£ä»ãããããã¿ã°åãã¨
    ã¿ãªããã¾ããã¿ã°åã¯ ":" ãå«ãã§ããªããããããªãã

    ãææ°ã®ãªãã¸ã§ã³ããç¤ºãããã®åå "tip" ã¯ãç¹å¥ãªååã¨ãã¦äºç´
    ããã¦ãã¾ãã

    ãç©ºãªãã¸ã§ã³ããç¤ºãããã®åå "null" ã¯ãç¹å¥ãªååã¨ãã¦äºç´
    ããã¦ããããªãã¸ã§ã³ 0 ã®è¦ªã¯ "null" ãªãã¸ã§ã³ã§ãã

    ãä½æ¥­é åã®è¦ªãªãã¸ã§ã³ããç¤ºãããã®åå "." ã¯ãç¹å¥ãªååã¨ãã¦
     äºç´ããã¦ãã¾ããä½æ¥­é åãæªæ´æ°ã®å ´åã¯ã"null" æå®ã¨ç­ä¾¡ã§ãã
    æªã³ãããã®ãã¼ã¸ä¸­ã®å ´åã"." ã¯ç¬¬1è¦ªãªãã¸ã§ã³ãæãã¾ãã
     
    Mercurial ã«ã¯ããã¡ã¤ã«ãç¹å®ãããã¿ã¼ã³æå®æ¹æ³ãè¤æ°ããã¾ãã

    ç¹ã«æå®ã®ç¡ãå ´åãMercurial ã¯æå®ããããã¡ã¤ã«åã«å¯¾ãã¦ã
    shell å½¢å¼ã®æ¡å¼µã¯ã¤ã«ãã«ã¼ãåè´ãè¡ãã¾ãã

    å¥ãªå½¢å¼ã§ã®ãã¿ã¼ã³è¨è¿°ã®éã«ã¯ãæç¤ºçã«ç¨®å¥ãæå®ãã¦ãã ããã

    ãã¿ã¼ã³åè´ãè¡ããã«ãæå®ãããååããã®ã¾ã¾ä½¿ç¨ããå ´åã
    ååã®åã« "path:" ãè¨è¿°ãã¾ãããã®å½¢å¼ãä½¿ç¨ããå ´åã
    ãªãã¸ããªã®ã«ã¼ãããã®ãã¹ã¨å®å¨ã«ä¸è´ããªããã°ãªãã¾ããã

    æ¡å¼µã¯ã¤ã«ãã«ã¼ãåè´ã®å ´åãååã®åã« "glob:" ãè¨è¿°ãã¾ãããã®
    å½¢å¼ã§ã¯ãç¾ãã£ã¬ã¯ããªããã®ç¸å¯¾ã«ãªãã¾ãã®ã§ã"*.c" ãã¿ã¼ã³ã¯
    æ«å°¾ã "*.c" ã§çµããç¾ãã£ã¬ã¯ããªä¸­ã®ãã¡ã¤ã«ã¨ã®ã¿åè´ãã¾ãã

    ã¯ã¤ã«ãã«ã¼ãã®æ¡å¼µææ³ã«ã¯ããã¹åºåããå«ããä»»æã®æå­åã¨åè´ãã
    "**" ã¨ã"a ãªãã b" ãæå³ãã "{a,b}" ã¨ããå½¢å¼ãããã¾ãã

    Perl/Python å½¢å¼ã®æ­£è¦è¡¨ç¾ã®å ´åãååã®åã« "re:" ãè¨è¿°ãã¾ãã
    æ­£è¦è¡¨ç¾å½¢å¼ã§ã¯ããªãã¸ããªã®ã«ã¼ãããã®åè´ãæå³ãã "^" æå®ã
   ãã¿ã¼ã³åé ­ã«èªåçã«ä»ä¸ããã¾ã(è¨³æ³¨: .hgignore ã§ã®æå®ã§ã¯ä»ä¸
   ãããã¾ãããã®ã§æ³¨æãå¿è¦ã§ã)ã

    ãã¿ã¼ã³åè´æªä½¿ç¨ä¾:

    path:foo/bar   ãªãã¸ããªã«ã¼ãç´ä¸ã® foo ãã£ã¬ã¯ããªä¸­ã® bar
    path:path:name "path:name" ã¨ããåå

    ã¯ã¤ã«ãã«ã¼ãæå®ä¾:

    glob:*.c       ç¾ãã£ã¬ã¯ããªç´ä¸ã§ãååã ".c" ã§çµãããã®
    *.c            ç¾ãã£ã¬ã¯ããªç´ä¸ã§ãååã ".c" ã§çµãããã®
    **.c           ç¾ãã£ã¬ã¯ããªãªãããã®éä¸ã®ãã£ã¬ã¯ããªã«ããã¦ã
                   ååã ".c" ã§çµãããã®
    foo/*.c        foo ãã£ã¬ã¯ããªç´ä¸ã§ãååã ".c" ã§çµãããã®
    foo/**.c       foo ãã£ã¬ã¯ããªãªãããã®éä¸ã®ãã£ã¬ã¯ããªã«ããã¦ã
                   ååã ".c" ã§çµãããã®

    æ­£è¦è¡¨ç¾æå®ä¾:

    re:.*\.c$      ä½æ¥­é åä¸­ã®ä»»æã®ä½ç½®ã§ãååã ".c" ã§çµãããã®

     
    ç¡æå®æã« Mercurial ã2ã¤ã®ãªãã¸ã§ã³ãæ¯è¼ãã¦å·®åè¡¨ç¤ºããéã®å½¢å¼ã¯
    GNU diff ã® unified å½¢å¼äºæã®ãã®ã§ãGNU patch ãã¯ããã¨ããå¤ãã®
    æ¨æºçãªãã¼ã«ã§ä½¿ç¨ã§ãããã®ã§ãã

    ãã®æ¨æºçãªå½¢å¼ã¯æ¦ã­ååãªã®ã§ãããä»¥ä¸ã®ãããªæå ±ã¯å«ã¾ãã¾ãã:

     - å®è¡å¯å¦(æ¨©éè¨­å®)
     - è¤è£½ï¼æ¹åæå ±
     - ãã¤ããªãã¡ã¤ã«ã®å¤æ´
     - ç©ºãã¡ã¤ã«ã®ä½æï¼åé¤

    Mercurial ã¯ãå¥ã®æ§æç®¡çãã¼ã«ã§ãã git ã«ç±æ¥ããæ¡å¼µå·®åå½¢å¼ã«ã
    å¯¾å¿ãã¦ããããã®å½¢å¼ã¯å¾æ¥ã®å·®åå½¢å¼ã®æã¤åã®å¶éãè§£æ¶ãã¦ãã¾ãã
    ä½ããæ®ã©ã®ãã¼ã«ã git å·®åå½¢å¼ã«å¯¾å¿ãã¦ããªããããMercurial ã¯
    æå®ãç¡ãå ´åã¯ãã®å½¢å¼ã§ã¯åºåãã¾ããã

    ã¤ã¾ããMercurial ã("hg export" ç­ã§)çæããæ¨æºã®å·®åå½¢å¼ã¯ã
    ä»ã®ãªãã¸ããªã«å¯¾ãã¦é©ç¨ããå ´åãä¸è¿°ããæå ±ã®æ¬ è½ããããã¨ããã
    ãã¡ã¤ã«ã®è¤è£½ã»æ¹åãã¯ããã¨ããä¸è¨ã®å¶éã«é¡ããæä½ã«é¢ãã¦ã¯ã
    ååæ³¨æããå¿è¦ãããã¾ããpush ã pull ã®ããã«ãMercurial ã®
    åé¨å½¢å¼ã§å®æ½ãããæä½ã«é¢ãã¦ã¯ããã¤ããªå½¢å¼ã§å¤æ´æå ±ã®æåãè¡ã
    ãã¨ãããæå ±ã®æ¬ è½ã«é¢ãã¦ã¯å¿éããå¿è¦ã¯ããã¾ããã

    Mercurial ãã git æ¡å¼µå·®åå½¢å¼ã®åºåãå¾ãã«ã¯ãåçå¯è½ãªã³ãã³ãã«
    å¯¾ãã¦ --git ãªãã·ã§ã³ãæå®ããããè¨­å®ãã¡ã¤ã«ã® [diff] ã»ã¯ã·ã§ã³ã«
    'git = True' è¨è¿°ãè¿½å ãã¦ãã ãããhg import ã mq ã¨ã¯ã¹ãã³ã·ã§ã³ã
    ä½¿ç¨ããå ´åã¯ããã®æå®ã¯ä¸è¦ã§ãã
     
    ä»¥ä¸ã®ã³ãã³ãã§æ¥ææå®ãå¯è½ã§ã:
    * backout, commit, import, tag: ã³ãããæ¥æã®æå®
    * log, revert, update: æ¥æã«ãããªãã¸ã§ã³ã®æå®

    æå¹ãªæ¥ææå®å½¢å¼ã¯æ²¢å±±ããã¾ããä»¥ä¸ã«ããã¤ãã®ä¾ãç¤ºãã¾ãã

    "Wed Dec 6 13:18:29 2006" (ãã­ã¼ã«ã«ã¿ã¤ã ã¾ã¼ã³ããæ³å®)
    "Dec 6 13:18 -0600" (ãä»å¹´ããæ³å®ãã¿ã¤ã ã¾ã¼ã³ã¯ãªãã»ããæå®)
    "Dec 6 13:18 UTC" (UTC ããã³ GMT ã¯ +0000 ã®å¥å)
    "Dec 6" (ãåå0æããæ³å®)
    "13:18" (ãæ¬æ¥ããæ³å®)
    "3:39" (ã3:39AMããæ³å®)
    "3:39pm" (15:39)
    "2006-12-06 13:18:29" (ISO 8601 å½¢å¼)
    "2006-12-6 13:18"
    "2006-12-6"
    "12-6"
    "12/6"
    "12/6/6" (2006å¹´12æ6æ¥)

    æå¾ã«ãMercurial åºæã®åé¨å½¢å¼ãç¤ºãã¾ãã

    "1165432709 0" (2006å¹´12æ6æ¥ 13:18:29 UTC)

    ããã¯æ¥æã®åé¨è¡¨ç¾å½¢å¼ã§ããåºç¹ã¨ãªã 1970å¹´1æ1æ¥ 00:00 UTC ããã®
    çµéç§æ°ãè¡¨ã unixtime å½¢å¼é¨åã¨ãã­ã¼ã«ã«ã¿ã¤ã ã¾ã¼ã³ã®ãªãã»ããå¤
    (UTC ãããæ±å´ã®å°åã¯è² å¤)ãè¡¨ããªãã»ããé¨åããæ§æããã¦ãã¾ãã

    log ã³ãã³ãã«ã¯ãæ¥æç¯å²æå®å¯è½ã§ã:

    "<{date}" - æå®æ¥æä»¥å(æå®æ¥æå«ã)
    ">{date}" - æå®æ¥æä»¥å¾(æå®æ¥æå«ã)
    "{date} to {date}" - æå®æ¥æç¯å²(æå®æ¥æå«ã)
    "-{days}" - æ¬æ¥ããæå®æ¥æ°ä»¥å
     
    æå¹ãª URL æå®ã¯ä»¥ä¸ã®å½¢å¼ã§ã:

      local/filesystem/path (ãªãã file://local/filesystem/path)
      http://[user[:pass]@]host[:port]/[path]
      https://[user[:pass]@]host[:port]/[path]
      ssh://[user[:pass]@]host[:port]/[path]

    ã­ã¼ã«ã«ãã¡ã¤ã«ã·ã¹ãã ä¸ã®ãã¹ãæãåã¯ Mercurial ã®ãªãã¸ããªã§ãã
    ãã³ãã«ãã¡ã¤ã«('hg bundle' ãªãã 'hg incoming --bundle' ã§çæ)ã§ã
    æ§ãã¾ããã

    é éãã¹ãä¸ã®é£æºåãªãã¸ããªæå®ã®å ´åã'#' è¨å·ã«ç¶ãã¦è­å¥å­ãæå®
    ãããã¨ã§ãç¹å®ã®ãã©ã³ããã¿ã°ãªãããã§ã³ã¸ã»ãããæå®ãããã¨ã
    åºæ¥ã¾ãã

    http:// ã https:// å½¢å¼ã® URL ã§æå®ãããé£æºåã¸ã® push ã®æ§ãª
    æ©è½ã®ãã¡ã®å¹¾ã¤ãã¯ããã®æ©è½ãé£æºåã® Mercurial ãµã¼ãå´ã§æç¤ºçã«
    å©ç¨å¯è½ã«ãªã£ã¦ããå ´åã«éãä½¿ç¨å¯è½ã§ãã

    Mercurial ã¨ SSH ãä½µç¨ããå ´åã®æ³¨æç¹:
    - SSH ã¢ã¯ã»ã¹åãã¹ãä¸ã«ãshell ã¢ã«ã¦ã³ãã¨ hg ã³ãã³ããå¿è¦ã§ãã
      hg ã³ãã³ããã¢ã¯ã»ã¹åãã¹ãã® PATH è¨­å®ã§å©ç¨å¯è½ã«ãªã£ã¦ããªã
      å ´åã¯ã--remotecmd ãªãã·ã§ã³ã§æç¤ºçã«æå®ãã¦ãã ããã
    - URL ä¸­ã®ãã¹æå®ã¯ãã¢ã¯ã»ã¹åãã¹ãä¸ã®ã¦ã¼ã¶ã®ãã¼ã ãã£ã¬ã¯ããª
      ããã®ç¸å¯¾ãã¹ã¨ã¿ãªããã¾ããçµ¶å¯¾ãã¹ãæå®ããå ´åã¯ããã¹ã®åé ­ã«
      æ´ã«ã¹ã©ãã·ã¥('/')ãä»ä¸ãã¦ãã ããã
         ä¾: ssh://example.com//tmp/repository
    - SSH é£æºã®éã«ã¯ Mercurial ã¯èªèº«ã®å§ç¸®å¦çãè¡ãã¾ãããä»¥ä¸ã®ããã«
      ~/.ssh/config ç­ã§ SSH ã®å§ç¸®å®æ½ãæç¤ºãããã¨ããå§ããã¾ãã
         Host *.mylocalnetwork.example.com
           Compression no
         Host *
           Compression yes
      ãããã¯ãè¨­å®ãã¡ã¤ã«ã«ããã ssh ã³ãã³ãæå®ããã³ãã³ãã©ã¤ã³ã§ã®
      --ssh ãªãã·ã§ã³ã«å¯¾ãã¦ã'ssh -C' ãæå®ããæ¹æ³ãããã¾ãã

    é£æºå URL ã¯ãè¨­å®ãã¡ã¤ã«ã® [paths] ã»ã¯ã·ã§ã³ã§ãå¥åãä»ãã¦è¨è¿°
    ãããã¨ãåºæ¥ã¾ãã
    [paths]
    alias1 = URL1
    alias2 = URL2
    ...

    URL æå®ãå¿è¦ãªã³ãã³ãã«å¯¾ãã¦ã¯ãå¥åãæå®ãããã¨ãåºæ¥ã¾ã
    (ä¾ãã°ã'hg pull alias1' ã¯ alias1 ã®æãåããå¤æ´ãåãè¾¼ã¿ã¾ã)ã

    ã³ãã³ãã« URL ãæå®ããªãã£ãå ´åã«ãæé»ã®é£æºåã¨ãã¦ä½¿ç¨ããã
    éè¦ãªå¥åã2ã¤ããã¾ãã

    default:
      'hg clone' ã«ãã£ã¦è¤è£½ããå ´åãè¤è£½åãªãã¸ããªã® URL ã
      'default' ã¨ãã¦ä¿å­ããã¾ããä»¥å¾ãé£æºåãçç¥ãã¦ 'hg push' ã
      'hg pull' ãå®è¡ããéã«ã¯ããã® URL ãé£æºåã¨ãã¦ä½¿ç¨ããã¾ãã

    default-push:
      'hg push' ã¯ã'default-push' ã®å¥åã§å®ç¾©ããã URL ãæ¢ãã¾ãã
      'default' ãå®ç¾©ããã¦ããå ´åã§ãã'default-push' ãå®ç¾©ããã¦ããã°
      ãã¡ããåªåããã¾ãã
     
    Mercurial ãè¤æ°ã®ãªãã¸ã§ã³æå®ãåãä»ããå ´åã®æå®æ¹æ³ã¯ã
    åãã®ãªãã¸ã§ã³ãããããæå®ããæ¹æ³ä»¥å¤ã«ãã":" ãåºåã
    è¨å·ã«ããç¯å²æå®ã«ããæ¹æ³ãããã¾ãã

    ç¯å²è¡¨è¨ã®ææ³ã¯ã"[éå§]:[çµäº]" ã¨ãããã®ã§ã"éå§"ã»"çµäº"
    é¨åã«ã¯ãããããªãã¸ã§ã³è­å¥ç¨ã®æå ±ãè¨è¿°ããã¾ãã
    "éå§"ã»"çµäº" ã¯ããããçç¥å¯è½ã§ãã"éå§" é¨åã
    è¨è¿°ãããªãå ´åããªãã¸ã§ã³çªå· 0 ãè¨è¿°ããããã®ã¨ã¿ãªããã¾ãã
    "çµäº" é¨åãè¨è¿°ãããªãå ´åãtip ãè¨è¿°ããããã®ã¨ã¿ãªããã¾ãã
    ä»¥ä¸ã®ãã¨ããã":" ã¨ããè¨è¿°ã¯ "å¨ãªãã¸ã§ã³" ãæãã¾ãã

    "éå§" æå®ã "çµäº" æå®ãããå¾ã®ãªãã¸ã§ã³ã§ããå ´åãéé æå®
    ã¨ã¿ãªããã¾ãã

    ç¯å²æå®ã¯ "éåºé" ã¨ã¿ãªããã¾ããã¤ã¾ãã3:5 ã¨ããç¯å²æå®ã¯
    3, 4, 5 ã®æå®ã¨ç­ä¾¡ã§ããåæ§ã« 4:2 ã¨ããç¯å²æå®ã¯ 4, 3, 2 ã®æå®ã¨
    ç­ä¾¡ã§ãã
     
HG::
    'hg' ã³ãã³ãã¸ã®ãã¹ãããã¯ï¼ã¨ã¯ã¹ãã³ã·ã§ã³ãªããå¤é¨ãã¼ã«ã®èµ·åã®
    éã«èªåçã«è¨­å®ããã¾ããæªè¨­å®ãç©ºã®å ´åã¯ã'hg' ã¨ããååã®å®è¡å¯è½
    ãã¡ã¤ã«ãæ¤ç´¢ããã¾ã(Windows ã®å ´å com/exe/bat/cmd ç­ã®æ¡å¼µå­ä»ã)ã

HGEDITOR::
    ã³ãããã®éã®ã¡ãã»ã¼ã¸å¥åãè¡ãããã®ã¨ãã£ã¿ã®ååãEDITOR ç°å¢å¤æ°
    ã«ã¤ãã¦ãåç§ãã¦ãã ããã

    (æ¨å¥¨ãããªãç°å¢å¤æ°ãè¨­å®ãã¡ã¤ã«çµç±ã§æå®ãã¦ãã ããã)

HGENCODING::
    Mercurial ã«ããã­ã±ã¼ã«èªåæ¤åºã®ä¸æ¸ãããã®è¨­å®ã¯ãã¦ã¼ã¶åã
    ã³ãããã¡ãã»ã¼ã¸ãã¿ã°åããã³ãã©ã³ãåãåé¨ãã¼ã¿å½¢å¼ã«å¤æãã
    éã«ä½¿ç¨ããã¾ãããã®ç°å¢å¤æ°è¨­å®ã¯ãã³ãã³ãã©ã¤ã³ã§ã® --encoding
    ãªãã·ã§ã³ã®ä½¿ç¨ã«ãããæ´ã«ä¸æ¸ããããã¨ãåºæ¥ã¾ãã

HGENCODINGMODE::
    ã¦ã¼ã¶ããã®æå®å¤ãåé¨ãã¼ã¿å½¢å¼ã«å¤æããéã«ãæå®ã®ç¬¦å·åã¨
    åè´ããªãæå­ãæ¤åºãããå ´åã® Mercurial ã®æåã®æå®ãç¡æå®æã¯ã
    ãæå®ã®ç¬¦å·åã¨åè´ããªãå ´åã¯å¦çä¸­æ­ããæå³ãã "strict" ãæå®
    ããããã®ã¨ã¿ãªãã¾ããä»ã«ã¯ããæªç¥ã®æå­ã®ç½®ãæãããæå³ãã
    "replace" ã¨ããæªç¥ã®æå­ã®åãæ¨ã¦ããæå³ãã "ignore" ãæå®
    åºæ¥ã¾ãããã®ç°å¢å¤æ°è¨­å®ã¯ãã³ãã³ãã©ã¤ã³ã§ã® --encodingmode
    ãªãã·ã§ã³ã®ä½¿ç¨ã«ãããæ´ã«ä¸æ¸ããããã¨ãåºæ¥ã¾ãã

HGMERGE::
    ãã¼ã¸ã®éã®è¡çªè§£æ¶ã«ä½¿ç¨ããã³ãã³ããæå®ãããã³ãã³ãã®èµ·åã«ã¯ã
    ä½æ¥­é åã®ãã¡ã¤ã«ãå¥ãªãã¸ã§ã³ã®ãã¡ã¤ã«ãä¸¡èã®è¦ªãªãã¸ã§ã³ã®
    ãã¡ã¤ã«ãè¡¨ã3ã¤ã®å¼æ°ãæå®ããã¾ãã

    (æ¨å¥¨ãããªãç°å¢å¤æ°ãè¨­å®ãã¡ã¤ã«çµç±ã§æå®ãã¦ãã ããã)

HGRCPATH::
    è¨­å®ãã¡ã¤ã«èª­è¾¼ã®ããã®ããã¡ã¤ã«ãªãããã£ã¬ã¯ããªã®ä¸è¦§ã®æå®ã
    ä¸è¦§è¦ç´ ã®åºåãè¨å·ã¯ãUnix ãªã ":"ãWIndows ãªã  ";" ã§ãã
    HGRCPATH ç°å¢å¤æ°ãè¨­å®ããã¦ããªãå ´åãåç¨¼åç°å¢ã«å¿ãã
    èª­ã¿è¾¼ã¿åããèª­ã¿è¾¼ã¾ãã¾ããç©ºã®å¤ãè¨­å®ããã¦ããå ´åã
    ç¾ãªãã¸ããªã® .hg/hgrc ã®ã¿ãèª­ã¿è¾¼ã¾ãã¾ãã

    æå®ãããä¸è¦§ã®åè¦ç´ ã«å¯¾ãã¦ããã£ã¬ã¯ããªæå®ãªãå½è©²ãã£ã¬ã¯ããª
    éä¸ã® ".rc" ã§çµããååã®ãã¡ã¤ã«ãããã¡ã¤ã«æå®ã®å ´åã¯ãã®
    ãã¡ã¤ã«èªèº«ããèª­ã¿è¾¼ã¿å¯¾è±¡ã¨ãªãã¾ãã

HGUSER::
    ãã§ã³ã¸ã»ããä½æèã¨ãã¦ã³ãããæã«è¨é²ããååã®æå®ã

    (æ¨å¥¨ãããªãç°å¢å¤æ°ãè¨­å®ãã¡ã¤ã«çµç±ã§æå®ãã¦ãã ããã)

EMAIL::
    HGUSER ç°å¢å¤æ°ãè¨­å®ããã¦ããªãå ´åããã§ã³ã¸ã»ããä½æèã¨ãã¦
    ã³ãããæã«ãã®ç°å¢å¤æ°å¤ãè¨é²ããã¾ãã

LOGNAME::
    HGUSER ã EMAIL ãå±ã«è¨­å®ããã¦ããªãå ´åããã§ã³ã¸ã»ããä½æèã¨ãã¦
    ã³ãããæã«('@hostname' ãè¿½å ãã)ãã®ç°å¢å¤æ°å¤ãè¨é²ããã¾ãã

VISUAL::
    ã³ãããæã®ã¡ãã»ã¼ã¸ãç·¨éããã¨ãã£ã¿åã®æå®ãEDITOR ç°å¢å¤æ°
    ã«ã¤ãã¦ãåç§ãã¦ãã ããã

EDITOR::
    ã³ãããæã®ã¡ãã»ã¼ã¸ã®ããã«ãã¨ãã£ã¿ã§ãã¡ã¤ã«ãéããã¦ã¼ã¶ã«ãã
    ç·¨éãä¿ãç¶æ³ãããã¾ããããã§ä½¿ç¨ãããã¨ãã£ã¿ã¯ãHGEDITORãVISUAL
    ãããã¯ EDITOR ç°å¢å¤æ°ã«è¨­å®ããããã®ã(ãã®é åºã§)ä½¿ç¨ãã¾ãã
    æåã®ç©ºã§ç¡ãå¤ã«è¨­å®ãããç°å¢å¤æ°ã®å¤ãä½¿ç¨ãã¾ããããããæªè¨­å®
    (ãããã¯ç©º)ã®å ´åã¯ã'vi' ãä½¿ç¨ããã¾ãã

PYTHONPATH::
    Mercurial ãå½è©²ã·ã¹ãã ã®å±æé åã«ã¤ã³ã¹ãã¼ã«ããã¦ããªãå ´åã
    Python ãå¿è¦ãªã¢ã¸ã¥ã¼ã«ãèª­ã¿è¾¼ãããã«ã¯ããã®å¤æ°å¤æ°ã®è¨­å®ã
    å¿è¦ã§ãã
     
è¿½å ã®ãã«ããããã¯:

 
å¥å: %s
 
å©ç¨å¯è½ãªæ¡å¼µæ©è½:

  (è¦å®å¤: %s) %s ã¯ %s ã®è¦ªãã§ã³ã¸ã»ããã§ã¯ããã¾ãã %s: ãã¤ããªãã¡ã¤ã«ã§ã
 (èªåçã«ãã¼ã¸ãããå ´åã¯ "backout --merge")
 ** Mercurial - åæ£æ§æç®¡ç(ãã¼ã¸ã§ã³ %s)
 ãã§ã³ã¸ã»ãã %s ã®æã¡æ¶ã æ¥æè¡¨è¨ å·®åå½¢å¼ ç°å¢å¤æ° ãã¡ã¤ã«åãã¿ã¼ã³ Mercurial - åæ£æ§æç®¡çãã¼ã«
 Mercurial - åæ£æ§æç®¡çãã¼ã«(ãã¼ã¸ã§ã³ %s)
 è¤æ°ãªãã¸ã§ã³ã®æå® åä¸ãªãã¸ã§ã³ã®æå® ãã³ãã¬ã¼ãã®å©ç¨ URLã®ãã¹æå® æ°è¦ãã¡ã¤ã«ã®è¿½å ç»é²ãããã³ä¸å¨ãã¡ã¤ã«ã®ç»é²é¤å¤

    ä½æ¥­é åä¸­ã®æ°è¦ãã¡ã¤ã«ã®è¿½å ç»é²ãããã³ä¸å¨ãã¡ã¤ã«ã®ç»é²é¤å¤ã
    è¡ãªãã¾ãã

    .hgignore ã«è¨è¿°ããããã¿ã¼ã³ã«åè´ããæ°è¦ãã¡ã¤ã«ã¯ç¡è¦ããã¾ãã
    hg add ã³ãã³ãã¨åæ§ã«ããã®ã³ãã³ãã®å®è¡ãå¹æãçºæ®ããã®ã¯ã
    æ¬¡åã®ã³ãããå®æ½å¾ã§ãã

    ãã¡ã¤ã«ã®æ¹åãæ¤ç¥ããã«ã¯ -s ãªãã·ã§ã³ãä½¿ç¨ãã¾ãã
    0 ããå¤§ããªå¤ãæå®ãããå ´åãè¿½å ã»é¤å¤ãã¡ã¤ã«ã®å¨ã¦ãæ¯è¼ããã
    æ¹åã¨ã¿ãªãããå¦ããå¤å®ããã¾ãããã®ãªãã·ã§ã³ã«ã¯ã0(æ¹åæ¯è¼ç¡å¹)
    ãã 100 (å®å¨ä¸è´)ã¾ã§ã®ç¯å²ã§ãã¼ã»ã³ãã¼ã¸ãæå®ãã¾ãã
    æ¹åå¤å®ã«ã¯å®è¡æéãè¦ããå¯è½æ§ãããã¾ãã
     ç¾ãªãã¸ã§ã³ãªããæå®ãªãã¸ã§ã³ã¸ã®ã¿ã°ã®ä»ä¸

    ç¹å®ã®ãªãã¸ã§ã³ã«ãæå®ãããååãä»ãã¾ãã

    ãªãã¸ããªä¸­ã®ç¹å®ã®ãªãã¸ã§ã³ã«ä»ããããååã§ããã¿ã°ã¯ããªãã¸ã§ã³
    éã§ã®æ¯è¼ããéè¦ãªãªãã¸ã§ã³ã®åç§ãåã¯ãªãªã¼ã¹ã®éã®åå²ç¹ã«å¯¾ãã
    ç®å°ã¨ãã£ãç¨éãªã©ã«ä½¿ç¨ãããã¨ãåºæ¥ã¾ãã

    ãªãã¸ã§ã³ãæå®ãããªãå ´åãä½æ¥­é åã®è¦ªãªãã¸ã§ã³ããä½æ¥­é åæ´æ°å
    ãªã tip ãã¿ã°ä»ãã®å¯¾è±¡ã¨ãªãã¾ãã

    åæ£æ§æç®¡çã«ãããã¿ã°ä»ãã®éç´ãå®¹æã«ããããã«ãæ§æç®¡çä¸ã«ãã
    ä»ã®ãã¡ã¤ã«ã¨åæ§ã«ãã¿ã°ã®æå ±ã¯ ".hgtags" ãã¡ã¤ã«ã§ç®¡çããã
    å¿è¦ã§ããã°æåã§ã®ç·¨éãå¯è½ã§ããã­ã¼ã«ã«ã¿ã°ã¯ '.hg/localtags' ã§
    ç®¡çããã¾ã(ãªãã¸ããªéã§å±æããããã¨ã¯ããã¾ãã)

    -d/--date ã¸ã®æå®ã«é¢ãã¦ã¯ã'hg help dates' ãåç§ãã¦ãã ããã
     æå®ããããã¡ã¤ã«ãæ¬¡åã³ãããããæ§æç®¡çã«è¿½å ç»é²

    æ§æç®¡çã¸ã®ãã¡ã¤ã«ã®è¿½å ç»é²ãäºç´ãã¾ãã

    æå®ããããã¡ã¤ã«ã¯æ¬¡åã®ã³ãããã®éã«ãªãã¸ããªã«è¿½å ããã¾ãã
    ã³ãããåã«è¿½å ç»é²ãåãæ¶ãæ¹æ³ã¯ãhg revert ãåç§ãã¦ãã ããã

    ãã¡ã¤ã«åæå®ãç¡ãå ´åãä½æ¥­é åä¸­ã®å¨ã¦ã®ãã¡ã¤ã«ãè¿½å ç»é²ãã¾ãã
     %s ãè¿½å ç»é²ä¸­
 ãã³ãã«ãã¡ã¤ã«ã®é©ç¨

    hg bundle ã³ãã³ãã§çæããããã³ãã«ãã¡ã¤ã«ãé©ç¨ãã¾ãã
     %s ãé©ç¨ä¸­
 ãã¡ã¤ã«åãªãããã¿ã¼ã³ãæä½1ã¤æå®ãã¦ãã ãã -l æå®æã«ã¯ -n/-c ã®ãã¡æä½ã§ããããã1ã¤ã®æå®ãå¿è¦ã§ã åºæ¬ã³ãã³ã:

 éå¸¸ãã¡ã¤ã«ã®ã¢ã¼ã«ã¤ããæ¨æºåºåã«åºåãããã¨ã¯ã§ãã¾ããã è¦ªã®ç¡ããã§ã³ã¸ã»ãããæã¡æ¶ããã¨ã¯ã§ãã¾ãã --parent æå®ãç¡ãã¨ãã¼ã¸ãã§ã³ã¸ã»ããã¯æã¡æ¶ãã¾ãã ç°ãªããã©ã³ãã®ãã§ã³ã¸ã»ãããæã¡æ¶ããã¨ã¯ã§ãã¾ãã éãã¼ã¸ãã§ã³ã¸ã»ããã«ã¯ --parent ãæå®ã§ãã¾ãã ãã§ã³ã¸ã»ãã %s ã¯ãã§ã³ã¸ã»ãã %s ãæã¡æ¶ãã¾ã
 å¤æ´åå®¹ã®ãªãã¸ããªã¸ã®è¨é²(ã³ããã)

    æå®ããããã¡ã¤ã«ã®å¤æ´åå®¹ããªãã¸ããªã«è¨é²(ã³ããã)ãã¾ãã

    ãã¡ã¤ã«æå®ãçç¥ãããå ´åã"hg status" ã«ããæ¤åºãããå¨ã¦ã®
    å¤æ´åå®¹ãã³ãããããã¾ãã

    "hg merge" çµæã®ã³ãããã®å ´åããã¡ã¤ã«åãªãã -I/-X ãªãã·ã§ã³ã®
    ããããæå®ããªãã§ãã ããã

    ã³ãããã¡ãã»ã¼ã¸ãæå®ãããªãå ´åãã¡ãã»ã¼ã¸å¥åã®ããã®ãã­ã°ã©ã ã
    è¨­å®ã«å¾ã£ã¦èµ·åããã¾ãã

    -d/--date ã¸ã®æå®ã«é¢ãã¦ã¯ã'hg help dates' ãåç§ãã¦ãã ããã
     %s ã¨æ¯è¼ä¸­
 ãã³ãã«ãã¡ã¤ã«ã®çæ

    æ¯è¼å¯¾è±¡ãªãã¸ããªã«å­å¨ããªããã§ã³ã¸ã»ããã®æå ±ãã¾ã¨ãããå§ç¸®ä»ã
    ãã³ãã«ãã¡ã¤ã«ãçæãã¾ãã

    æ¯è¼å¯¾è±¡ãªãã¸ããªãæå®ãããªãå ´åã1ã¤ä»¥ä¸ã® --base ã§æå®ããã
    å¨ã¦ã®ãã§ã³ã¸ã»ãããæã¤ãªãã¸ããªãæ³å®ããã¾ãã
    å¨ã¦ã®ãã§ã³ã¸ã»ãããå«ããã³ãã«ãã¡ã¤ã«ãçæããã«ã¯ã--all 
    (ãªãã "--base null") ãæå®ãã¦ãã ãããå§ç¸®æ¹å¼ãå¤æ´ããå ´åã¯
     -t ãªãã·ã§ã³ãä½¿ç¨ãã¾ã(ç¡æå®æã¯ bz2 å§ç¸®)ã

    çæããããã³ãã«ãã¡ã¤ã«ã¯ãä»»æã®æ¹æ³ã§è»¢éããä»ã®ãªãã¸ããªä¸ã§
    unbundle ãªãã pull ã³ãã³ãã«ããé©ç¨å¯è½ã§ãã
    push/pull ã«ããç´æ¥è»¢éãã§ããªãå ´åãããªãã¸ããªå¨ä½ã®å¬éã
    æã¾ããç¡ãå ´åã«ããã³ãã«ãã¡ã¤ã«ã¯æç¨ã§ãã

    ãã³ãã«ã®é©ç¨ã«ãããæ¨©éè¨­å®ãè¤è£½ï¼æ¹åãå¤æ´å±¥æ­´ã¨ãã£ãæå ±ãå«ã
    å¨ã¦ã®æ´æ°åå®¹ãåãè¾¼ã¾ãã¾ãã
     æå®ããããã£ã¬ã¯ããªã§ã®æ°è¦ãªãã¸ããªã®ä½æ

    æå®ããããªãã¸ããªãæ°è¦ãªãã¸ããªã¨ãã¦åæåãã¾ããæå®ããã
    ãã£ã¬ã¯ããªãå­å¨ããªãå ´åã«ã¯ããã£ã¬ã¯ããªãä½æãã¾ãã

    ãã£ã¬ã¯ããªãæå®ãããªãå ´åãç¾ãã£ã¬ã¯ããªãåæåããã¾ãã

    è¤è£½åã¨ãã¦ ssh:// URL å½¢å¼ãæå®ãããã¨ãå¯è½ã§ãã
    è©³ç´°ã«é¢ãã¦ã¯ã'hg help urls' ãåç§ãã¦ãã ããã
     ãªãã¸ããªå¤ã¸ã®ã¢ã¼ã«ã¤ãã®çæ

    æå®ãç¡ãå ´åãä½æ¥­é åã®è¦ªãªãã¸ã§ã³ãä½¿ç¨ããã¾ãã
    ä»ã®ãªãã¸ã§ã³ãæå®ããå ´åã¯ "-r" ãä½¿ç¨ãã¾ãã

    çæããã¢ã¼ã«ã¤ãã®ç¨®å¥ãæå®ããå ´åã¯ã"-t" ãä½¿ç¨ãã¾ãã
    ä½¿ç¨å¯è½ãªç¨®å¥ã¯:

    "files" (ç¡æå®æ): a directory full of files
    "tar": éå§ç¸®ã® tar ã¢ã¼ã«ã¤ãå½¢å¼
    "tbz2": bzip2 å§ç¸®ã® tar ã¢ã¼ã«ã¤ãå½¢å¼
    "tgz": gzip å§ç¸®ã® tar ã¢ã¼ã«ã¤ãå½¢å¼
    "uzip": éå§ç¸®ã® zip ã¢ã¼ã«ã¤ãå½¢å¼
    "zip": å§ç¸®æã zip ã¢ã¼ã«ã¤ãå½¢å¼

    æçµçãªã¢ã¼ã«ã¤ãçæåã¨ãªããã¡ã¤ã«åãªãããã£ã¬ã¯ããªåã¯ã
    ç½®ææå®ãä½¿ç¨ãã¦æå®ãããã¨ãã§ãã¾ãã
    ç½®ææå®ã«é¢ããè©³ç´°ã¯ "hg help export" ãåç§ãã¦ãã ããã

    ã¢ã¼ã«ã¤ãã«åå«ããããã¡ã¤ã«ã«ã¯ãå±éææ ¼ç´åãæå®ããããã®
    ãã£ã¬ã¯ããªåç½®è©ãä»ä¸ããã¾ãã "-p" ã«ããåç½®è©ãæå®å¯è½ã§ãã
    ãã£ã¬ã¯ããªåç½®è©ãç¡æå®ã®æã¯ãã¢ã¼ã«ã¤ããã¡ã¤ã«ã®ãã¡ã¤ã«åãã
    æ¥å°¾è¾ãé¤ãããã®ãä½¿ç¨ããã¾ãã
     ä½æ¥­é åå¨ä½(ãªããæå®ãã¡ã¤ã«)ã®å·®åæ½åº

    æå®ããããã¡ã¤ã«ã«å¯¾ãã¦ããªãã¸ã§ã³éã®å·®åãè¡¨ç¤ºãã¾ãã

    å·®åã¯ unified diff å½¢å¼ã§è¡¨ç¤ºããã¾ãã

    åè: ãã¼ã¸ã«å¯¾ããå·®åè¡¨ç¤ºãæå¾ã¨ç°ãªãå ´åãããã®ã¯ã
    ç¡æå®æã«æ¯è¼å¯¾è±¡ã¨ãªãã®ãä½æ¥­é åã®ç¬¬1è¦ªãªãã¸ã§ã³ã§ããããã§ãã

    ãªãã¸ã§ã³ã2ã¤æå®ãããå ´åãä¸¡ãªãã¸ã§ã³éã®å·®åãè¡¨ç¤ºããã¾ãã
    ãªãã¸ã§ã³ã1ã¤æå®ãããå ´åãå½è©²ãªãã¸ã§ã³ã¨ä½æ¥­é åã®åå®¹ãæ¯è¼
    ããããªãã¸ã§ã³ã1ã¤ãæå®ãããªãå ´åã¯ãä½æ¥­é åã®åå®¹ã¨
    è¦ªãªãã¸ã§ã³ã¨ãæ¯è¼ããã¾ãã

    -a ãªãã·ã§ã³æå®ãç¡ãå ´åããã¤ããªã¨æãããã¡ã¤ã«ã¯å¦çå¯¾è±¡ãã
    é¤å¤ãã¾ãã-a ãªãã·ã§ã³æå®ãæãå ´åãæ³å®å¤ã®çµæã«ãªããã¨ãã
    å¨ã¦ã®ãã¡ã¤ã«ã«å¦çãå®æ½ãã¾ãã

    git æ¡å¼µå·®åå½¢å¼ã§è¡¨ç¤ºããã«ã¯ --git ãªãã·ã§ã³ãæå®ãã¾ãã
    è©³ç´°ã¯ "hg help diffs" ãåç§ãã¦ãã ããã
     1ã¤ä»¥ä¸ã®ãã§ã³ã¸ã»ããã«å¯¾ãããããããã³å¤æ´åå®¹ã®åºå

    1ã¤ä»¥ä¸ã®ãªãã¸ã§ã³ã«å¯¾ãã¦ããããæå ±ããã³å¤æ´åå®¹ãè¡¨ç¤ºãã¾ãã

    ãããæå ±ã«ã¯ä»¥ä¸ã®æå ±ãå«ã¾ãã¾ã: 
    ä½æè/ããã·ã¥å¤/è¦ªãªãã¸ã§ã³/ã³ãããã­ã°

    åè: æ¬ã³ãã³ãããã¼ã¸å®æ½ãã§ã³ã¸ã»ããã«å¯¾ãã¦ãæå¾ã¨ç°ãªãå·®åã
    åºåããã®ã¯ãç¬¬1è¦ªã¨ã®å·®åã®ã¿ãåºåããããã§ãã

    (ç½®ææå®å¯è½ãª)åºååæå®ãããå ´åãåºåã¯ãã¡ã¤ã«ã«ä¿å­ããã¾ãã
    ç½®ææå®ã¨ãã¦ä»¥ä¸ã®ãã®ãä½¿ç¨å¯è½ã§ã:

    %%   "%" æå­ãã®ãã®
    %H   ããã·ã¥å¤(40 æ¡ 16 é²æ°)
    %N   çæããããã¡ã¤ã«ã®ç·æ°
    %R   ãªãã¸ã§ã³çªå·
    %b   å¯¾è±¡ãªãã¸ããªã®ãã¼ã¹å
    %h   ç­ç¸®å½¢å¼ããã·ã¥å¤(12 æ¡ 16 é²æ°)
    %n   1ããå§ã¾ãã¼ã­è©°ãã®éãçªå·
    %r   ã¼ã­è©°ãã®ãªãã¸ã§ã³çªå·

    -a ãªãã·ã§ã³æå®ãç¡ãå ´åããã¤ããªã¨æãããã¡ã¤ã«ã¯å¦çå¯¾è±¡ãã
    é¤å¤ãã¾ãã-a ãªãã·ã§ã³æå®ãæãå ´åãæ³å®å¤ã®çµæã«ãªããã¨ãã
    å¨ã¦ã®ãã¡ã¤ã«ã«å¦çãå®æ½ãã¾ãã

    git æ¡å¼µå·®åå½¢å¼ã§è¡¨ç¤ºããã«ã¯ --git ãªãã·ã§ã³ãæå®ãã¾ãã
    è©³ç´°ã¯ "hg help diffs" ãåç§ãã¦ãã ããã

    --switch-parent ãªãã·ã§ã³ãæå®ãããã¨ã§ãæ¯è¼å¯¾è±¡ãç¬¬2è¦ªã«ãªãã¾ãã
    ããã¯ãã¼ã¸ã®ã¬ãã¥ã¼ã®éãªã©ã«æå¹ã§ãã
     HTTP çµç±ã§ã®ãªãã¸ããªã®å¬é

    HTTP çµç±ã§ã®ãªãã¸ããªåç§ã¨ hg pull ãå¯è½ã«ãããµã¼ããèµ·åãã¾ãã

    ç¹ã«æå®ãç¡ãå ´åããµã¼ãã¯ã¢ã¯ã»ã¹ã­ã°ãæ¨æºåºåã¸ãã¨ã©ã¼ã¯æ¨æº
    ã¨ã©ã¼åºåã«åºåãã¾ããã­ã°ããã¡ã¤ã«ã«è¨é²ããå ´åã¯ã"-A" ã 
    "-E" ãªãã·ã§ã³ãä½¿ç¨ãã¦ãã ããã
     ã°ã­ã¼ãã«ãªãã·ã§ã³: ä½æ¥­é åãªããç¹å®ãªãã¸ã§ã³ã®è­å¥æå ±è¡¨ç¤º

    ãªãã¸ã§ã³æå®ç¡ãã®èµ·åã§ã¯ãä½æ¥­é åã®ç¶æãè¡¨ç¤ºãã¾ãã

    ãã¹æå®æãã§ã®èµ·åã®å ´åã¯ãä»ã®ãªãã¸ããªãåç§ãã¾ãã

    æ¬ã³ãã³ãã®åºåããè¦ç´æå ±ã¯ã1ã¤ãªãã2ã¤ã®è¦ªãªãã¸ã§ã³ã®ããã·ã¥å¤ã
    ä½¿ç¨ãã¦ãä½æ¥­é åã®ç¶æãè­å¥ãã¾ããããã·ã¥å¤ã®å¾ãã«ã¯ãä½æ¥­é åã«
    æªã³ãããã®å¤æ´ãããå ´åã¯ "+"ãå½è©²ãªãã¸ã§ã³ã«ä»ãã¦ããã¿ã°ã®
    ä¸è¦§ãdefault ä»¥å¤ã®ãã©ã³ãã®å ´åã«ã¯ãã©ã³ãåãç¶ãã¾ãã
     ãããã®é æ¬¡åãè¾¼ã¿

    åæããããããã®åãè¾¼ã¿ããã³ã³ããããåå¥ã«è¡ãã¾ãã

    ä½æ¥­é åã«æªã³ãããã®å¤æ´ãããå ´åã-f ãã©ã°ãæå®ãããªãéã
    åãè¾¼ã¿ã¯ä¸­æ­ããã¾ãã

    é»å­ã¡ã¼ã«ããç´æ¥ããããåãè¾¼ããã¨ãå¯è½ã§ããæ·»ä»ãã¡ã¤ã«å½¢å¼ã®
    ãããã§ãã£ã¦ãåãè¾¼ã¿å¯è½ã§ã(text/plain ãªãã text/x-patch å
    ã§ãªããã°ãªãã¾ãã)ãé»å­ã¡ã¼ã«ã® From ããã³ Subject ãããã¯
    ç¡æå®æã®ä½æèããã³ã³ãããã­ã°ã¨ãã¦ä½¿ç¨ããã¾ãã
    æåã®ããããã¼ã¿ãããåã® text/plain åããã£ã®åå®¹ã¯ã
    ã³ãããã­ã°ã«å¯¾ãã¦è¿½å ããã¾ãã

    hg export ã«ããçæãããããããåãè¾¼ãå ´åãé»å­ã¡ã¼ã«ã®ãããã
    ããã£é¨åã®æå ±ãããããããã«å«ã¾ããæå ±ã®æ¹ãåªåãã¾ãã
    ã³ãã³ãã©ã¤ã³ã§ã® -m ãªãã -u æå®ã¯ãããããããåªåãã¾ãã

    --exact ãæå®ãããéã«ã¯ãä½æ¥­é åãããããã®ãããã®è¦ªãªãã¸ã§ã³ã§
    æ´æ°ãã¦ãããããã®é©ç¨ãå®æ½ãã¾ãããä½æããããã§ã³ã¸ã»ããã®IDã
    ãããã«è¨é²ããã ID ã¨ç°ãªãå ´åããããã®é©ç¨ãä¸­æ­ãã¾ãã
    ãã®ä¸­æ­ã¯ãå©ç¨ããæå­ç¬¦å·åã®åé¡ãããããã®ãã­ã¹ãé¨åã®ä¸è¶³
    ã¨ãã£ããã¨ãåå ã§çºçããå¯è½æ§ãããã¾ãã

    --similarity ãæå®ãããéã«ã¯ããããã«ããå¤æ´ã«ãããæ¹åãè¤è£½ã
    hg addremove ã¨åæ§ãªæ¹éã§ç¹å®ãã¾ãã

    æ¨æºå¥åããããããåãè¾¼ãã«ã¯ããããåã« "-" ãæå®ãã¦ãã ããã
    -d/--date ã¸ã®æå®ã«é¢ãã¦ã¯ã'hg help dates' ãåç§ãã¦ãã ããã
     ãã§ã³ã¸ã»ããè¡¨ç¤ºæ°ã®å¶é ã³ãã³ãä¸è¦§:

 ãªãã¸ããªä¸­ã®ååä»ããã©ã³ãã®ä¸è¦§

    ãªãã¸ããªä¸­ã®ååä»ããã©ã³ãããéæ´»æ§(inactive)ã®ãã®ãå«ã
    ä¸è¦§è¡¨ç¤ºãã¾ãã--active æå®æã«ã¯ãæ´»æ§ã®ãã®ã®ã¿è¡¨ç¤ºããã¾ãã

    ãªãã¸ããªä¸­ã«ããããæã¤ãã©ã³ãã¯æ´»æ§ã¨ã¿ãªããã¾ãã

    ä½æ¥­é åã®åå®¹ãæ¢å­ãã©ã³ãã®ãã®ã§æ´æ°ããå ´åã¯ 'hg update' ã
    ä½¿ç¨ãã¦ãã ããã
     ãªãã¸ããªä¸­ã®ã¿ã°ä¸è¦§ã®è¡¨ç¤º

    æ¬ã³ãã³ãã¯ãéå¸¸ã®ã¿ã°ããã³ã­ã¼ã«ã«ã¿ã°ã®ä¸¡æ¹ãä¸è¦§è¡¨ç¤ºãã¾ãã
    -v/--verbose ãªãã·ã§ã³ãæå®ãããå ´åãã­ã¼ã«ã«ã¿ã°ã®è­å¥æå ±ç¨ã«ã
    "local" ã«ã©ã ãè¿½å è¡¨ç¤ºããã¾ãã
     æå®ããããã¿ã¼ã³ã«åè´ããååãæã¤ãã¡ã¤ã«ã®ç¹å®

    æ§æç®¡çå¯¾è±¡ã¨ãªããã¡ã¤ã«ã®ä¸­ãããæå®ããããã¿ã¼ã³ã«åè´ããååã
    æã¤ãã¡ã¤ã«ãç¹å®ãã¾ãã

    ç¹ã«æå®ãç¡ãå ´åãæ¬ã³ãã³ãã¯æ§æç®¡çå¯¾è±¡ã¨ãªãä½æ¥­é åä¸­ã®
    å¨ãã¡ã¤ã«ãæ¤ç´¢å¯¾è±¡ã¨ãã¾ããç¾ãã£ã¬ã¯ããªã¨ãã®ãµããã£ã¬ã¯ããªã®ã¿ã
    æ¤ç´¢å¯¾è±¡ã¨ããã«ã¯ã"--include ." ãä½¿ç¨ãã¦ãã ããã

    ãã¿ã¼ã³æå®ãç¡ãå ´åãæ¬ã³ãã³ãã¯å¨ãã¡ã¤ã«ã®ãã¡ã¤ã«åãè¡¨ç¤ºãã¾ãã

    æ¬ã³ãã³ãã®åºåã "xargs" ã³ãã³ãã¸ã¨æ¸¡ãå ´åãæ¬ã³ãã³ãã¨
    "xargs" ã³ãã³ãã®ä¸¡æ¹ã¸ã® "-0" ãªãã·ã§ã³æå®ããå§ããã¾ãã
    ç©ºç½æå­ãå«ãåä¸ã®ãã¡ã¤ã«åããè¤æ°ã®ãã¡ã¤ã«åã«è§£éããã¦ãã¾ã
    "xargs" ã®åé¡ã¯ããã®ãªãã·ã§ã³ã«ããè§£æ±ºãããã¨ãã§ãã¾ãã
     æ¢å­ãªãã¸ããªã®è¤è£½

    æ¢å­ãªãã¸ããªããæ°è¦ãã£ã¬ã¯ããªã«è¤è£½ãã¾ãã

    è¤è£½åãã£ã¬ã¯ããªãæå®ãããªãå ´åãè¤è£½åã®ãã¼ã¹åãä½¿ç¨ãã¾ãã

    è¤è£½åãªãã¸ããªä½ç½®ã¯ãè¤è£½åãªãã¸ããªã® .hg/hgrc ãã¡ã¤ã«ã«å¯¾ãã¦
    å°æ¥çãª pull å®æ½ã«åãã¦ default åç¾©ã§è¨é²ããã¾ãã

    å¹çä¸ã®çç±ãããè¤è£½åï¼è¤è£½åãåä¸ãã¡ã¤ã«ã·ã¹ãã ä¸ã«ããå ´åã
    (ãªãã¸ããªã®åé¨ãã¼ã¿ã«å¯¾ãã¦ã®ã¿)ãã¼ããªã³ã¯ãä½¿ç¨ããã¾ãã
    AFS ãå«ãå¹¾ã¤ãã®ãã¡ã¤ã«ã·ã¹ãã ã¯ããã¼ããªã³ã¯å®è£ãä¸é©åã§ãã
    ã«ãé¢ããããã¨ã©ã¼éç¥ãããã¾ããããã®ãããªå ´åã«ãã¼ããªã³ã¯ã
    ææ­¢ããã«ã¯ --pull ãªãã·ã§ã³ãä½¿ç¨ãã¾ãã

    ãªãã¸ããªã®åé¨ãã¼ã¿ã¨ä½æ¥­é åä¸­ã®ãã¡ã¤ã«å¨ã¦ã«å¯¾ãã¦ããã¼ããªã³ã¯
    ã«ããè¤è£½ãä½æããã«ã¯ãä»¥ä¸ã®æ¹æ³ãä½¿ããããç¥ãã¾ããã

      $ cp -al REPO REPOCLONE

    ãã®æ¹æ³ã¯æéã®è¤è£½æ¹æ³ããããã¾ããããå¸¸ã«å®å¨ã¨ã¯éãã¾ããã
    æä½ã®åä¸æ§ã¯ä¿éããã¾ãã(REPO ã®è¤è£½ä¸­æ¹å¤ã®é²æ­¢ã¯å©ç¨èã®è²¬å)ãã
    å©ç¨ããã¨ãã£ã¿ã«æ¹å¤æã®ãã¼ããªã³ã¯ç ´æ£ããããå¿è¦ãããã¾ã
    (Emacs ããã³å¤ãã® Linux Kernel ãã¼ã«ã¯ãã®ããã«æ¯èãã¾ã)ã
    ãã®å¶ç´ã¯ã.hg ãã£ã¬ã¯ããªéä¸ã«ã¡ã¿ãã¼ã¿ãéç½®ãããMQ ã®ãããª
    ã¨ã¯ã¹ãã³ã·ã§ã³ã¨ã¯ç¸å®¹ããªããã®ã§ãã

    -r ãªãã·ã§ã³ã«ãããªãã¸ã§ã³æå®è¤è£½ãè¡ãªãå ´åãè¤è£½åãªãã¸ããªã«ã¯
    æå®ãªãã¸ã§ã³ä»¥å¾ã®ãªãã¸ã§ã³ã¯å­å¨ãã¾ããã
    ãã®ãªãã·ã§ã³ã¯ãåä¸ãã¡ã¤ã«ã·ã¹ãã ä¸ã§ã®è¤è£½ã§ãã£ã¦ããæé»çã«
    --pull æå®ãä¼´ãã¾ãã

    -U ãªãã·ã§ã³æå®æã¯ãç®¡çé å(.hg)ã®è¤è£½ã¯è¡ãªããã¾ããã
    è¤è£½å¾ã®ä½æ¥­é åæ´æ°ã¯è¡ãªããã¾ãã(è¦ªãªãã¸ã§ã³ãç¡ãç¶æ)ã

    æå¹ãªè¤è£½åæå®å½¢å¼ã¯ 'hg help urls' ãåç§ãã¦ãã ããã

    è¤è£½åã¨ãã¦ ssh:// URL å½¢å¼ãæå®ãããã¨ãå¯è½ã§ããã
    .hg/hgrc ããã³ä½æ¥­é åã¯é éãã¹ãã«ä½æããã¾ãã
    ssh:// URL å½¢å¼ã®è©³ç´°ã«é¢ãã¦ã¯ã'hg help urls' ãåç§ãã¦ãã ããã
     æå®ããããã¡ã¤ã«ã®è¤è£½

    å¯¾è±¡ãã¡ã¤ã«ãè¤è£½åã®è¤è£½ã§ãããã¨ãè¨é²ãã¾ããè¤è£½åæå®ã
    ãã£ã¬ã¯ããªã®å ´åããã£ã¬ã¯ããªåã«è¤è£½ãä½æããã¾ãã
    è¤è£½åæå®ããã¡ã¤ã«ã®å ´åãè¤è£½åã¯1ã¤ããæå®ã§ãã¾ããã

    ç¹ã«æå®ãç¡ãå ´åæ¬ã³ãã³ãã¯ãè¤è£½åãã¡ã¤ã«ã®åå®¹ã§ä½æ¥­é åã«
    æå®ãããååã®ãã¡ã¤ã«ãä½æãã¾ãã--after æå®ãããå ´åããè¤è£½ã
    æä½ã¯è¨é²ããã¾ããããã¡ã¤ã«ã®è¤è£½ã¯è¡ããã¾ããã

    æ¬ã³ãã³ãã®å®è¡çµæã¯æ¬¡åã®ã³ãããã®éã«ãªãã¸ããªã«è¨é²ããã¾ãã
    ã³ãããåã«è¤è£½æä½ãåãæ¶ãæ¹æ³ã¯ hg revert ãåç§ãã¦ãã ããã
     ä½æ¥­é åã®åå®¹ã¨ä»ã®ãªãã¸ã§ã³ã®ãã¼ã¸

    ç¾æç¹ã§ã®ä½æ¥­é åã®åå®¹ããæå®ããããªãã¸ã§ã³ã¨ãã¼ã¸ãã¾ãã
    ä¸¡æ¹ã®è¦ªãªãã¸ã§ã³ã«å¯¾ãã¦å¤æ´ã®ãããã¡ã¤ã«ã¯ãæ¬¡åã³ãããã®éã«ã¯
    æ´æ°ã¨ãã¦è¨é²ããã¾ãã®ã§ãããä»¥ä¸ã®å¤æ´ãå®æ½ãããåã«
    ã³ããããå®æ½ãã¦ãã ããã

    ãã¼ã¸å¯¾è±¡ãªãã¸ã§ã³ã®æå®ãç¡ããä½æ¥­é åã®è¦ªãªãã¸ã§ã³ããããã§ã
    ä¸ã¤ç¾è¡ãã©ã³ãããã1ã¤ã ãããããæã¤å ´åããã®ãããããã¼ã¸å¯¾è±¡
    ã¨ãªãã¾ããããä»¥å¤ã®å ´åã¯ãæç¤ºçãªãªãã¸ã§ã³æå®ãå¿è¦ã§ãã
     ãã§ã³ã¸ã»ãã %s ã¨ãã¼ã¸ä¸­
 ãã­ã»ã¹IDæ¸ãåºãåãã¡ã¤ã«å æ°ããªãã§ã³ã¸ã»ããã¯ããã¾ãã
 ä½æ¥­é åãããªãã¸ã§ã³ãç¹å®ã§ãã¾ããããªãã¸ã§ã³ãæå®ãã¦ãã ããã ãªãã·ã§ã³:
 æå®ããããªãã¸ã§ã³ã®ãã¡ã¤ã«åå®¹ã®åºå

    ç¹å®ã®ãã¡ã¤ã«ã®æå®ããããªãã¸ã§ã³ã«ãããåå®¹ãåºåãã¾ãã
    ãªãã¸ã§ã³æå®ãç¡ãå ´åãä½æ¥­é åã®è¦ªãªãã¸ã§ã³ãã
    ä½æ¥­é åã®æ´æ°åãªã tip ãä½¿ç¨ããã¾ãã

    (ç½®ææå®å¯è½ãª)åºååæå®ãããå ´åãåºåã¯ãã¡ã¤ã«ã«ä¿å­ããã¾ãã
    ç½®ææå®ã¯ export ã³ãã³ãã§æå®å¯è½ãªãã®ã«å ãã
    ä»¥ä¸ã®ãã®ãæå®å¯è½ã§ãã

    %s   å¯¾è±¡ãã¡ã¤ã«ã®ãã¼ã¹å
    %d   å¯¾è±¡ãã¡ã¤ã«ã®æ ¼ç´ãã£ã¬ã¯ããªããªãã '.'
    %p   å¯¾è±¡ãã¡ã¤ã«ã®ãªãã¸ããªã«ã¼ãããã®ç¸å¯¾ãã¹
     ç¾æç¹ãªããæå®æç¹ã§ã®ãªãã¸ããªãããã§ã¹ãã®åºå

    æå®ãªãã¸ã§ã³ã§ã®æ§æç®¡çå¯¾è±¡ãã¡ã¤ã«ã®ä¸è¦§ãè¡¨ç¤ºãã¾ãã
    ãªãã¸ã§ã³æå®ãç¡ãå ´åãä½æ¥­é åã®(ç¬¬1)è¦ªãªãã¸ã§ã³ãã
    ä½æ¥­é åã®æ´æ°åãªã tip ãä½¿ç¨ããã¾ãã

    ããããã§ã¹ããã¨ã¯ãæ§æç®¡çå¯¾è±¡ãã¡ã¤ã«ã®ä¸è¦§ãæãã¾ãã

    -v ãæå®ãããå ´åããã¡ã¤ã«ã¢ã¯ã»ã¹æ¨©ãã·ã³ããªãã¯ãªã³ã¯ã
    å®è¡å¯è½ãããã¨ãã£ããã®ãè¡¨ç¤ºããã¾ãã
    --debug ãæå®ãããå ´åããªãã¸ã§ã³ã®ããã·ã¥å¤ãè¡¨ç¤ºããã¾ãã
     ãã¼ã¸ã§ã³ããã³èä½æ¨©æå ±ã®è¡¨ç¤º æã¡æ¶ãå¯¾è±¡ãªãã¸ã§ã³ãæå®ãã¦ãã ãã ãªãã¸ã§ã³æå®ã¯1ã¤ã ãã§ã ä½æ¥­é åã®ã«ã¼ã(æä¸ä½)ãã£ã¬ã¯ããªä½ç½®ã®è¡¨ç¤º

    ä½æ¥­é åã®ã«ã¼ããã£ã¬ã¯ããªä½ç½®ãè¡¨ç¤ºãã¾ãã
     æå®ããããªãã¸ããªããã®ãã§ã³ã¸ã»ããåãè¾¼ã¿

    é£æºåãªãã¸ããªããã­ã¼ã«ã«ãªãã¸ããªã«ãã§ã³ã¸ã»ãããåãè¾¼ã¿ã¾ãã

    ãã¹ã URL ã§æå®ãããé£æºåãªãã¸ããªä¸­ã®ãå¨ã¦ã®ãã§ã³ã¸ã»ããã
    åãè¾¼ã¿å¯¾è±¡ã¨ãªãã¾ããæå®ãç¡ãå ´åããã®ã³ãã³ããå®è¡ãã¦ã
    ä½æ¥­é åã®åå®¹ã¯æ´æ°ããã¾ããã

    é£æºåãçç¥ãããå ´åã'default' ãã¹ãé£æºåã¨ãã¦ä½¿ç¨ããã¾ãã
    è©³ç´°ã¯ 'hg help urls' ãåç§ãã¦ãã ããã
     %s ããåãè¾¼ã¿ä¸­
 æå®ããããªãã¸ããªã¸ã®ãã§ã³ã¸ã»ããåæ 

    ã­ã¼ã«ã«ãªãã¸ããªããé£æºåãªãã¸ããªã¸ã¨ãã§ã³ã¸ã»ãããåæ ãã¾ãã

    ããã¯ hg pull ã¨å¯¾ç§°çãªæä½ã§ããç¾å¨ã®ãªãã¸ããªããé£æºåã¸ã¨ã
    ãã§ã³ã¸ã»ãããç°¡åã«ç§»åããããã¨ãã§ãã¾ããé£æºåãªãã¸ããªã
    åä¸ãã¹ãä¸ã«ããå ´åã¯ãç¾ãªãã¸ããªã«å¯¾ããé£æºåãªãã¸ããªã§ã®
    hg pull å®è¡ã¨åä¸ã®å¹æãæã¡ã¾ãã

    éå¸¸ã¯ãé£æºåãªãã¸ããªã«ããããå¢ããå®è¡ã¯æçµ¶ããã¾ãã
    ãã®ãããªå ´åãå¤§æ¦ã¯ hg push åã® hg pull ããã³ hg merge å®è¡ã
    å¿ãã¦ãããã¨ãæ®ã©ã§ãã

    -r ãæå®ãããå ´åãæå®ããããã§ã³ã¸ã»ããã¨ãã®ç¥åãé£æºå
    ãªãã¸ããªã¸ã¨åæ ããã¾ãã

    ssh:// URL å½¢å¼ã®è©³ç´°ã«é¢ãã¦ã¯ã'hg help urls' ãåç§ãã¦ãã ããã
    é£æºåãçç¥ãããå ´åã'default' ãã¹ãé£æºåã¨ãã¦ä½¿ç¨ããã¾ãã
    è©³ç´°ã«é¢ãã¦ã¯ã'hg help urls' ãåç§ãã¦ãã ããã
     æ¬¡åã³ãããã«ãããæå®ããããã¡ã¤ã«ã®ç»é²é¤å¤

    æ§æç®¡çå¯¾è±¡ããã®é¤å¤ãäºç´ãã¾ãã

    ãã®æä½ã«ããç»é²é¤å¤ã®å¯¾ç§°ã¯ç¾è¡ãã©ã³ãã®ã¿ã§ãä»ãã©ã³ãã«ããã¦ã¯
    ãã¡ã¤ã«ã¯å­ç¶ãç¶ãã¾ããæåã§åé¤ãããã¡ã¤ã«ã®ç»é²é¤å¤ã«ã¯ -Aã
    å¼·å¶çãªç»é²é¤å¤ã«ã¯ -fãä½æ¥­é åä¸­ã®ãã¡ã¤ã«ãåé¤ãããã¨ãªãç»é²è§£é¤
    ããã«ã¯ -Af æå®ãæå¹ã§ãã

    ãã¡ã¤ã«ã®ç¶æ(æ¨ª)ã¨ãªãã·ã§ã³æå®(ç¸¦)ã®çµã¿åããã«ãããæåã®ä¸è¦§ã
    ä»¥ä¸ã«ç¤ºãã¾ãããã¡ã¤ã«ã®ç¶æã¯ãhg status ãè¡¨ç¤ºãã A(Add:è¿½å )ã
    C(Clean:æ¹å¤ç¡ã)ãM(Modified:æ¹å¤æã)ããã³ !(ä¸æ)ã§è¡¨ãã¾ãã
    æåã¯ W(Warn:è­¦å)ãR(Remove:æ§æç®¡çããã®ç»é²é¤å¤)ããã³
    D(Delete:ä½æ¥­é åããã®åé¤)ã§è¡¨ãã¾ãã

            A  C  M  !
    ç¡æå®  W  RD W  R
    -f      R  RD RD R
    -A      W  W  W  R
    -Af     R  R  R  R

    æå®ããããã¡ã¤ã«ã¯æ¬¡åã®ã³ãããã®éã«ç»é²ãé¤å¤ããã¾ãã
    ã³ãããåã«ç»é²è§£é¤ãåãæ¶ãæ¹æ³ã¯ãhg revert ãåç§ãã¦ãã ããã
     %s ãç»é²è§£é¤ä¸­
 ãã¡ã¤ã«ã®æ¹å(copy + remove ã¨ç­ä¾¡)

    è¤è£½åãã¡ã¤ã«ããè¤è£½åã®è¤è£½ã§ããã¨è¨é²ããè¤è£½åãç»é²è§£é¤ãã¾ãã
    è¤è£½åæå®ããã£ã¬ã¯ããªã®å ´åããã£ã¬ã¯ããªåã«è¤è£½ãä½æããã¾ãã
    è¤è£½åæå®ããã¡ã¤ã«ã®å ´åãè¤è£½åã¯1ã¤ããæå®ã§ãã¾ããã

    ç¹ã«æå®ãç¡ãå ´åæ¬ã³ãã³ãã¯ãè¤è£½åãã¡ã¤ã«ã®åå®¹ã§ä½æ¥­é åã«
    æå®ãããååã®ãã¡ã¤ã«ãä½æãã¾ãã--after æå®ãããå ´åããè¤è£½ã
    æä½ã¯è¨é²ããã¾ããããã¡ã¤ã«ã®è¤è£½ã¯è¡ããã¾ããã

    æ¬ã³ãã³ãã®å®è¡çµæã¯æ¬¡åã®ã³ãããã®éã«ãªãã¸ããªã«è¨é²ããã¾ãã
    ã³ãããåã«æ¹åæä½ãåãæ¶ãæ¹æ³ã¯ hg revert ãåç§ãã¦ãã ããã
     ãªãã¸ããªã®ã«ã¼ããä½æåã«æå®ãããã¨ã¯ã§ãã¾ããã åãã¡ã¤ã«ï¼ãã£ã¬ã¯ããªç¶æã®å¾©æ§

    (hg revert ã¯ä½æ¥­é åã®è¦ªãªãã¸ã§ã³ãå¤æ´ããªãã®ã§ãä½æ¥­é åã®ç¶æã
    ä»¥åã®çã«æ»ãå ´åã¯ãhg update ãä½¿ç¨ãã¦ãã ãã)

    ãªãã¸ã§ã³æå®ãç¡ãå ´åãæå®ããããã¡ã¤ã«ï¼ãã£ã¬ã¯ããªãä½æ¥­é åã®
    è¦ªãªãã¸ã§ã³æç¹ã®åå®¹ã¸ã¨å¾©æ§ãã¾ãã
    æ¬ã³ãã³ãã¯å¯¾è±¡ã¨ãªããã¡ã¤ã«ã«å¯¾ãã¦ãç¶æããæ¹å¤ç¡ããã¨ãã
    add/remove/copy/rename ã«ããæ¬¡åã³ãããåãã®æä½äºç´ãåãæ¶ãã¾ãã
    ä½æ¥­é åã®è¦ªãªãã¸ã§ã³ã2ã¤ããå ´åãã©ã¡ãã®åå®¹ã§å¾©æ§ããã®ãã
    æç¤ºçã«æå®ããå¿è¦ãããã¾ãã

    -r ãªãã·ã§ã³ãæå®ãããå ´åãæå®ããããã¡ã¤ã«ï¼ãã£ã¬ã¯ããªãã
    æå®ããããªãã¸ã§ã³æç¹ã®åå®¹ã¸ã¨å¾©æ§ãã¾ããä»¥åã®å¤æ´åå®¹ã®ä¸é¨ã
    ãªããå¨é¨ãåãæ¶ãç¨éã«ãä½¿ç¨ã§ãã¾ãã
    -d/--date ã¸ã®æå®ã«é¢ãã¦ã¯ã'hg help dates' ãåç§ãã¦ãã ããã

    æ¬ã³ãã³ãã¯ä½æ¥­é åã®åå®¹ãå¤æ´ãã¾ãããå¤æ´ã®ã³ãããããä½æ¥­é åã®
    è¦ªãªãã¸ã§ã³ã®å¤æ´ã¯è¡ãã¾ããããã®ãããä½æ¥­é åã®è¦ªãªãã¸ã§ã³ä»¥å¤ã®
    ãªãã¸ã§ã³ãæå®ãã¦å¾©æ§ããå ´åãå¾©æ§å¾ã®ãã¡ã¤ã«ã®ç¶æã¯ãæ¹å¤æãã
    ã¨ãªãã¾ãã

    ãã¡ã¤ã«ãåé¤ããã¦ããå ´åããã¡ã¤ã«ã¯å¾©æ§ããã¾ããå®è¡æ¨©éãããã
    å¤æ´ããã¦ããå ´åãå¤æ´åã®ç¶æã«å¾©æ§ããã¾ãã

    å¾©æ§å¯¾è±¡ãæå®ãããå ´åãæå®ãããååã«åè´ããå¨ã¦ã®ãã¡ã¤ã«ãå¾©æ§
    å¯¾è±¡ã¨ãªãã¾ããå¾©æ§å¯¾è±¡ãæå®ãããªãã£ãå ´åã¯ããããã®ãã¡ã¤ã«ã
    å¾©æ§ããã¾ããã

    æ¹å¤ããããã¡ã¤ã«ã®å¾©æ§ã®éã«ã¯ãå¾©æ§åã®åå®¹ã .orig æ¡å¼µå­ãä»ãã
    ãã¡ã¤ã«ã«ä¿å­ããã¾ãããã®ä¿å­ã¯ --no-backup æå®ã§ç¡å¹åå¯è½ã§ãã
     hg merge ã hg update ã«ããããã¡ã¤ã«ãã¼ã¸ã®åå®æ½

    ç´åã® hg merge ã hg update ã®éã«ä¿å­ããããã¡ã¤ã«ã®åå®¹ãç¨ãã
    ç¶ºéºãªç¶æã§ã®ãã¼ã¸ããè¡çªæªè§£æ¶ã®ãã¡ã¤ã«ã«å¯¾ãã¦å®æ½ãã¾ãã
    å¨ã¦ã®è¡çªæªè§£æ¶ãã¡ã¤ã«ãå®æ½å¯¾è±¡ã«ããå ´åã¯ã-a ãªãã·ã§ã³ãæå®
    ãã¦ãã ããã

    æ¬ã³ãã³ãã¯ããã¡ã¤ã«ã®è¡çªè§£æ¶ç¶æã®ä¸è¦§è¡¨ç¤ºããè§£æ¶æ¸ã¿ã»æªè§£æ¶ã®
    ç¶æåºåã®æåæå®ããããã¨ãã§ãã¾ãã

    ãã¡ã¤ã«ã®è¡çªè§£æ¶ç¶æè¡¨ç¤ºã«ã¯ä»¥ä¸ã®è¨å·ãä½¿ç¨ããã¾ã:
    U = æªè§£æ¶
    R = è§£æ¶æ¸ã¿
     ä»¥åã®ãã§ã³ã¸ã»ããã®å¹æã®æã¡æ¶ã

    æã¡æ¶ãç¨ãã§ã³ã¸ã»ãããæ°è¦ãã§ã³ã¸ã»ããã¨ãã¦ã³ããããã¾ãã
    æ°è¦ãã§ã³ã¸ã»ããã¯ãææ¶ãå¯¾è±¡ãã§ã³ã¸ã»ããã®å­ãã§ã³ã¸ã»ããã¨ãã¦
    ä½æããã¾ãã

    tip ä»¥å¤ã®ãã§ã³ã¸ã»ãããæã¡æ¶ãå ´åãæ°è¦ããããçæããã¾ãã
    ãã®ãããã¯æ°è¦ tip ã¨ãªãã¾ãã®ã§ããã®æã¡æ¶ããã§ã³ã¸ã»ããã¨
    ä»ã®ããã(éå¸¸ã¯æã¡æ¶ãå®æ½åã®ããã)ããã¼ã¸ãã¦ãã ããã

    --merge ãªãã·ã§ã³æå®æã¯ãå®æ½åã«ä½æ¥­é åã®è¦ªãã§ã³ã¸ã»ããã
    è¨é²ãããå®æ½å¾ã«æ°ããªãããã¨ãã®ãã§ã³ã¸ã»ããããã¼ã¸ããã¾ãã
    ããã«ããæåãã¼ã¸ã®æéãçãã¾ããéå¸¸ã® merge ã¨åæ§ã«ã
    ãã®ãã¼ã¸çµæã¯èªåçã«ã¯ commit ããã¾ããã

    -d/--date ã¸ã®æå®ã«é¢ãã¦ã¯ã'hg help dates' ãåç§ãã¦ãã ããã
     ãªãã¸ã§ã³ ä¸­æ­ããããã©ã³ã¶ã¯ã·ã§ã³ã®åãæ¶ã

    commit ã pull ãä¸­æ­ãããå ´åã®å¾©æ§ãè¡ãã¾ãã

    æ¬ã³ãã³ãã¯ãæä½ãä¸­æ­ãããéã®ãªãã¸ããªç¶æã®ä¿®å¾©ãè¡ãã¾ãã
    æ¬ã³ãã³ãã®å®è¡ã¯ãMercurial ãå®è¡ãä¿ããå ´åã®ã¿ã§ååã§ãã
     ç´åã®ãã©ã³ã¶ã¯ã·ã§ã³ã®å·»ãæ»ã

    æ¬ã³ãã³ãã®ä½¿ç¨ã«å½ãã£ã¦ã¯æ³¨æãå¿è¦ã§ããå·»ãæ»ãã¯ï¼æ®µééãã§ã
    å·»ãæ»ãããã©ã³ã¶ã¯ã·ã§ã³ã®åå®æ½ã¯ã§ãã¾ãããæ¬ã³ãã³ãã¯ã
    ç´åã®ãã©ã³ã¶ã¯ã·ã§ã³å®æ½æç¹ã® dirstate ãå¾©åãããã®æç¹ä»¥å¾ã®
    å¤æ´ã¯å¨ã¦å¤±ããã¾ãã

    ãã©ã³ã¶ã¯ã·ã§ã³ã¨ã¯ãæ°è¦ãã§ã³ã¸ã»ããã®ä½æããªããå¤é¨ããã®æ¢å­
    ãã§ã³ã¸ã»ããã®åãè¾¼ã¿ã«è¦ããã³ãã³ãã®å¹æãä¸æ¬åãããã®ã§ãã
    ä¾ãã°ãä»¥ä¸ã®ã³ãã³ãã¯ãããããã©ã³ã¶ã¯ã·ã§ã³ãå½¢æãããã®ã§ã
    ãã®å¹æã¯å·»ãæ»ãå¯è½ã§ãã

      commit
      import
      pull
      push (rollback å¯è½ãªã®ã¯åæ åãªãã¸ããªå´)
      unbundle

    æ¬ã³ãã³ãã¯ãå¬éãªãã¸ããªã§ã®å®è¡ãæ³å®ãã¦ãã¾ããã
    ä»ã®ã¦ã¼ã¶ã«å¯¾ãã¦ä¸æ¦ pull å¯è½ãªç¶æã«ãªã£ã¦ãã¾ã£ããªãã
    å¬éãªãã¸ããªã§ã® rollback ã¯(æ¢ã«ä»ã®ã¦ã¼ã¶ã«ãã£ã¦åãè¾¼ã¾ãã¦ãã
    å¯è½æ§ãããã®ã§)å¹æãæã¡ã¾ããã
    ãã®ä¸ããªãã¸ããªããã®æå ±èª­ã¿åãã«éãã¦ãç«¶åãçºçãå¾ã¾ãã
    ä¾ãã°ãå·»ãæ»ãæä½ã«ãã£ã¦ãé²è¡ä¸­ã®ãªãã¸ããªããã®åãè¾¼ã¿ã
    å¤±æãã¦ãã¾ãå¯è½æ§ãããã¾ãã
     ããã¯ã°ã©ã¦ã³ãã§ã®ãµã¼ãå®è¡ ç¹å®ã®ãã¿ã¼ã³ã«åè´ãããã¡ã¤ã«ã¨ãªãã¸ã§ã³ã®æ¤ç´¢

    æ­£è¦è¡¨ç¾ã«åè´ãããã¡ã¤ã«ãå«ããªãã¸ã§ã³ãæ¤ç´¢ãã¾ãã

    æ¬ã³ãã³ãã®æåã¯ Unix ã® grep ã¨ã¯ç°ãªãã¾ããè§£éå¯è½ãªæ­£è¦è¡¨ç¾ã¯
    Python/Perl å½¢å¼ã®ãã®ã ãã§ããæ¤ç´¢å¯¾è±¡ã¯ãªãã¸ããªåã®ãã¼ã¿ã®ã¿ã§ã
    ä½æ¥­é åã¯æ¤ç´¢å¯¾è±¡ã«ã¯å«ã¾ãã¾ããããã¿ã¼ã³ã«åè´ããåå®¹ãç¾ãã
    ãªãã¸ã§ã³ãè¡¨ç¤ºãã¾ãã

    æå®ãç¡ãå ´åæ¬ã³ãã³ãã¯ããã¿ã¼ã³ã«åè´ããåå®¹ãæå°ã«ç¾ãã
    ãªãã¸ã§ã³ãåãã¡ã¤ã«æ¯ã«è¡¨ç¤ºãã¾ãããã¿ã¼ã³ã«åè´ããå¤æ´ã®ãã£ã
    å¨ã¦ã®ãªãã¸ã§ã³ãè¡¨ç¤ºããå ´åã--all ãªãã·ã§ã³ãæå®ãã¾ã
    (ãã¿ã¼ã³åè´é¨åã®åé¤ã¯ "-"ãç»å ´ã¯ "+" ãè¡¨ç¤ºãããã¨ã§åºå¥)ã
     ç¾ãã©ã³ãåã®è¨­å®ãªããè¡¨ç¤º

    å¼æ°ç¡ãã®å ´åãç¾ãã©ã³ãåãè¡¨ç¤ºãã¾ããå¼æ°æãã®å ´åã
    ä½æ¥­é åã®ãã©ã³ãåãè¨­å®ãã¾ã(ãã©ã³ãçæã¯æ¬¡åã³ãããæ)ã

    --force æå®ãç¡ãå ´åãæ¢å­ãã©ã³ããé ããã©ã³ãåã¯è¨­å®ã§ãã¾ããã

    --clean æå®ã«ãããä»¥åã®ãã©ã³ãåè¨­å®ãç¡å¹ã«ãã¦ãä½æ¥­é åã®
    è¦ªãªãã¸ã§ã³ã®ãã©ã³ãåã«æ»ãã¾ãã

    ä½æ¥­é åã®åå®¹ãæ¢å­ãã©ã³ãã®ãã®ã§æ´æ°ããå ´åã¯ 'hg update' ã
    ä½¿ç¨ãã¦ãã ããã
     é£æºåãªãã¸ããªã®å¥åä¸è¦§ã®è¡¨ç¤º

    æå®ãããã·ã³ãã«åã«ç¸å½ããé£æºåãªãã¸ããªãè¡¨ç¤ºãã¾ãã
    ã·ã³ãã«åãæå®ãããªãå ´åãå¨ã¦ã®å¥åå®ç¾©ãè¡¨ç¤ºããã¾ãã

    ã·ã³ãã«å®ç¾©ã¯ã/etc/mercurial/hgrc ããã³ $HOME/.hgrc ç­ã® [paths]
    ã»ã¯ã·ã§ã³ã«è¨è¿°ããã¾ããä½æ¥­é åã§ã®å®è¡ã®å ´åã¯ .hg/hgrc ã«ãè¨è¿°
    å¯è½ã§ãã

    è©³ç´°ã¯ 'hg help urls' ãåç§ãã¦ãã ããã
     ä½æ¥­é åã®ãã¡ã¤ã«æä½ç¶æ³ã®è¡¨ç¤º

    ä½æ¥­é åã®ãã¡ã¤ã«ç¶æãè¡¨ç¤ºãã¾ããåå(ãã¿ã¼ã³)ãæå®ãããå ´åã
    ãã®ååã«åè´ãããã¡ã¤ã«ã®ã¿ãè¡¨ç¤ºããã¾ããæ¹å¤ç¡ã(clean)ã
    ç¡è¦(ignored)ãªããè¤è£½(copy)ã»æ¹å(rename)ã®åãã¡ã¤ã«ã«é¢ãã¦ã¯ã
    ãããã -c (clean)ã-i (ignored) ãªãã -C (copy) ãæå®ããããã
    -A(all) ãæå®ãããªãéãè¡¨ç¤ºããã¾ãããè¡¨ç¤ºå¯¾è±¡é¸æã®ãªãã·ã§ã³ã
    ä½ãæå®ãããªãå ´åã-m -a -r -d -u ãæå®ããããã®ã¨ãã¦åä½ãã¾ãã

    -q/--quiet ãªãã·ã§ã³æå®ãããå ´åãæç¤ºçã« -u/--unknown ãªãã
    -i/-ignored ãæå®ãããªãéããæ§æç®¡çå¯¾è±¡å¤(unknown ã¨ ignored)
    ã®ãã¡ã¤ã«ãè¡¨ç¤ºå¯¾è±¡å¤ã¨ãã¾ãã

    åè:æ¨©éè¨­å®ã®å¤æ´ããã¼ã¸ãè¡ãããå ´åãå·®åè¡¨ç¤ºããæå¾ãããçµæ
    ã¨ã¯ç°ãªãç¶æãè¡¨ç¤ºãããå¯è½æ§ãããã¾ããæ¨æºçãªå·®ååºåå½¢å¼ã¯ã
    æ¨©éå¤æ´ã®æå ±ãå«ã¿ã¾ãããããã¼ã¸ã«ãããä¸æ¹ã®è¦ªãªãã¸ã§ã³ã¨ã®
    å·®åããè¡¨ç¤ºãã¾ããã

    1ã¤ã®ãªãã¸ã§ã³ãæå®ãããå ´åãæ¯è¼åãªãã¸ã§ã³ã¨ãã¦æ±ããã¾ãã
    2ã¤ã®ãªãã¸ã§ã³ãæå®ãããå ´åãä¸¡ãªãã¸ã§ã³ã®éã§ç¶æãæ¯è¼ããã¾ãã

    ãã¡ã¤ã«ã®ç¶æãè¡¨ãè¨å·ã¯ä»¥ä¸ã®éã:
    M = æ¹å¤æã(modified)
    A = æ°è¦ç»é²(added)
    R = ç»é²è§£é¤(removed)
    C = æ¹å¤ç¡ã(clean)
    ! = ä½æ¥­é åã«ãã¡ã¤ã«ãç¡ã(missing)
    ? = æ§æç®¡çå¯¾è±¡å¤(unknown)
    I = ç¡è¦(ignored)
      = ç´åã«è¡¨ç¤ºãããæ°è¦ç»é²ãã¡ã¤ã«ã®è¤è£½å
     ãã¡ã¤ã«è¡æ¯ã®ãã§ã³ã¸ã»ããæå ±è¡¨ç¤º

    ãã¡ã¤ã«ã®åè¡æ¯ã«ããã®åå®¹ãç±æ¥ãããªãã¸ã§ã³IDãè¡¨ç¤ºãã¾ãã

    æ¬ã³ãã³ãã¯ãå¤æ´ã®å®æ½èãªããå®æ½æ¬¡æãç¹å®ããã®ã«æç¨ã§ãã

    -a ãªãã·ã§ã³æå®ãç¡ãå ´åããã¤ããªã¨æãããã¡ã¤ã«ã¯å¦çå¯¾è±¡ãã
    é¤å¤ãã¾ãã-a ãªãã·ã§ã³æå®ãæãå ´åãæ³å®å¤ã®çµæã«ãªããã¨ãã
    å¨ã¦ã®ãã¡ã¤ã«ã«å¦çãå®æ½ãã¾ãã
     é£æºåãªãã¸ããªã«å«ã¾ããªããã§ã³ã¸ã»ããã®è¡¨ç¤º

    æå®ãããé£æºåãªãã¸ããª(ãªãããç¡æå®æã® hg push åãªãã¸ããª)ã«
    å«ã¾ããªããã§ã³ã¸ã»ãããè¡¨ç¤ºãã¾ããããã§è¡¨ç¤ºããããã§ã³ã¸ã»ããã¯
    hg push å®æ½ã®éã«ãé£æºåãªãã¸ããªã¸ã¨åæ ããããã§ã³ã¸ã»ããã§ãã

    æå®å¯è½ãªãªãã¸ããªæå®å½¢å¼ã¯ hg pull ã®ãã«ããåç§ãã¦ãã ããã
     å¨è¨­å®ãã¡ã¤ã«ã«ããæçµçãªè¨­å®åå®¹ã®è¡¨ç¤º

    å¼æ°æå®ãç¡ãå ´åãå¨ã¦ã®è¨­å®é ç®ã«å¯¾ãã¦ãååã¨å¤ãè¡¨ç¤ºãã¾ãã

    section.name å½¢å¼ã«åè´ããå¼æ°ã1ã¤ã ãæå®ããå ´åããã®è¨­å®é ç®ã®
    å¤ã®ã¿ãè¡¨ç¤ºãã¾ãã

    è¤æ°ã®å¼æ°ãæå®ãããå ´åãããããã»ã¯ã·ã§ã³åã¨ã¿ãªããè©²å½ãã
    ã»ã¯ã·ã§ã³ã®è¨­å®é ç®ãå¨ã¦è¡¨ç¤ºãã¾ãã ç¾æç¹ã§ã®ãªãã¸ããª(ãªãããã©ã³ã)ã®ãããè¡¨ç¤º

    å¼æ°æå®ãç¡ãå ´åããªãã¸ããªä¸­ã®å¨ã¦ã®ããããè¡¨ç¤ºãã¾ãã

    ãã©ã³ããªãããªãã¸ã§ã³ãæå®ãããå ´åæ¬ã³ãã³ãã¯ãæå®ããã
    ãã©ã³ãããªããæå®ãªãã¸ã§ã³ãå±ãããã©ã³ãã®ããããè¡¨ç¤ºãã¾ãã

    ãªãã¸ããªã®ãããããã¨ã¯ãå­ãã§ã³ã¸ã»ãããæããªããã§ã³ã¸ã»ããã®
    ãã¨ãæãã¾ããæ¹å¤ä½æ¥­ã®å®æ½ããupdate/merge ã³ãã³ãå®æ½ã®éã«ã¯
    ãã®ãã§ã³ã¸ã»ãããå¯¾è±¡ã¨ããã®ãä¸è¬çã§ãã

    ãã©ã³ãã®ãããã¯ãå½è©²ãã©ã³ãã«å±ãã¤ã¤ããã®ãã©ã³ãã«å±ãã
    å­ãã§ã³ã¸ã»ãããæããªããã§ã³ã¸ã»ããã®ãã¨ãæãã¾ãã
    å½è©²ãã©ã³ãã§ã®ä½æ¥­ã¯ãã®ãã§ã³ã¸ã»ãããå¯¾è±¡ã¨ããã®ãä¸è¬çã§ãã
     æå®ããããããã¯ã®ãã«ãããã«ãæ¦è¦ã®è¡¨ç¤º

    å¼æ°æå®ãç¡ãå ´åãã³ãã³ãã®ä¸è¦§ã¨æ¦è¦ãè¡¨ç¤ºãã¾ãã

    ãããã¯ãã³ãã³ãåãæå®ãããå ´åãæå®å¯¾è±¡ã®ãã«ããè¡¨ç¤ºãã¾ãã æå®ãªãã¸ããªä¸­ã®æªåãè¾¼ã¿ãã§ã³ã¸ã»ããã®æ¤ç´¢

    ãã¡ã¤ã«ãã¹ã URLãhg pull ã® default åãè¾¼ã¿å¯¾è±¡ã«ããæå®ããã
    ãªãã¸ããªä¸­ã®ãæªåãè¾¼ã¿ãã§ã³ã¸ã»ãããæ¤ç´¢ãã¾ãã
    ãããã¯ãhg pull ãå®è¡ããéã«åãè¾¼ã¾ããäºå®ã®ãã§ã³ã¸ã»ããã§ãã

    é éãã¹ãã®ãªãã¸ããªã®å ´åã--bundle ãä½¿ç¨ãããã¨ã§ãæ¬ã³ãã³ã
    å®è¡å¾ã® hg pull å®æ½ã®éã«ãååº¦ã®ãã§ã³ã¸ã»ããæ¤ç´¢ãææ­¢ã§ãã¾ãã

    å¯¾è±¡ãªãã¸ããªã®æå®å½¢å¼ã®è©³ç´°ã¯ hg pull ã®ãã«ããåç§ãã¦ãã ããã
     ãããå½¢å¼ã§ã®è¡¨ç¤º ãªãã¸ããªå¨ä½ãªãããã¡ã¤ã«ã®å¤æ´å±¥æ­´ã®è¡¨ç¤º

    ç¹å®ã®ãã¡ã¤ã«ãªãããªãã¸ããªå¨ä½ã®å¤æ´å±¥æ­´ãè¡¨ç¤ºãã¾ãã

    ãã¡ã¤ã«ã®å±¥æ­´è¡¨ç¤ºã§ã¯ãæ¹åãè¤è£½ã«ãããåãã¡ã¤ã«ã«ã¾ã§ããã®ã¼ã£ã
    å±¥æ­´ã¯è¡¨ç¤ºãã¾ãããåãã¡ã¤ã«ã®å±¥æ­´ã¾ã§ããã®ã¼ãå ´åã«ã¯ããã¡ã¤ã«åã¨
    ä¸ç·ã« -f/--follow ãªãã·ã§ã³ãæå®ãã¦ãã ããã--follow æå®ã®éã«
    ãã¡ã¤ã«åãæå®ããªãå ´åã¯ãéå§ãªãã¸ã§ã³ã®åç¥ãªããå­å­«ã®ãªãã¸ã§ã³
    ã®ã¿ãè¡¨ç¤ºãã¾ãã--follow-first æå®ã¯ããã¼ã¸ãªãã¸ã§ã³ã«ããã¦
    ç¬¬1è¦ªã®å±¥æ­´ã®ã¿ãããã®ã¼ãã¾ãã

    å¯¾è±¡ãªãã¸ã§ã³ã®ç¯å²ãæå®ãããªãå ´åãå¯¾è±¡ã¨ãªããªãã¸ã§ã³ã®ç¯å²ã¯
    tip:0 ã¨ã¿ãªããã¾ããã--follow ãæå®ãããå ´åã¯ãä½æ¥­é åã®
    è¦ªãªãã¸ã§ã³ãéå§ãªãã¸ã§ã³ã¨ã¿ãªããã¾ãã

    -d/--date ã¸ã®æå®ã«é¢ãã¦ã¯ã'hg help dates' ãåç§ãã¦ãã ããã

    ç¹ã«æå®ãç¡ãå ´åãæ¬ã³ãã³ãã¯ä»¥ä¸ã®æå ±ãåºåãã¾ã:
    ãªãã¸ã§ã³çªå·ãããã·ã¥IDãã¿ã°ã(ãªãã¸ã§ã³çªå·ã®é¢ãã)è¦ªãªãã¸ã§ã³ã
    ä½æèãä½ææ¥æããã³ã³ãããã­ã°ã®1è¡ç®ã
    -v/--verbose ãæå®ãããå ´åãå¤æ´å¯¾è±¡ãã¡ã¤ã«ä¸è¦§ã¨ãã³ãããã­ã°ã®
    å¨æãè¡¨ç¤ºããã¾ãã

    åè: -p ãªãã·ã§ã³ããã¼ã¸ãã§ã³ã¸ã»ããã«å¯¾ãã¦äºæãã¬å·®åãåºå
    ããã®ã¯ãå¸¸ã«ç¬¬1è¦ªã¨ã®å·®åãè¡¨ç¤ºããããã§ãããã¡ã¤ã«ä¸è¦§ãäºæãã¬
    åå®¹ã¨ãªãã®ã¯ãä¸¡æ¹ã®è¦ªã¨ç°ãªããã¡ã¤ã«ã®ã¿ãåæãããããã§ãã

     ä½æ¥­é å(ãªããæå®ãªãã¸ã§ã³)ã®è¦ªãªãã¸ã§ã³ã®è¡¨ç¤º

    ä½æ¥­é åã®è¦ªãªãã¸ã§ã³ãè¡¨ç¤ºãã¾ãã--rev ã§ã®ãªãã¸ã§ã³æå®ãããå ´å
    æå®ãªãã¸ã§ã³ã®è¦ªãªãã¸ã§ã³ãè¡¨ç¤ºãã¾ãããã¡ã¤ã«ãæå®ãããå ´åã
    (ä½æ¥­é åã®è¦ªãªãã¸ã§ã³ããªãã --rev ã«ããæå®ãªãã¸ã§ã³ä»¥åã®ãã®ã§)
    ãã®ãã¡ã¤ã«ãæå¾ã«æ´æ°ãããªãã¸ã§ã³ãè¡¨ç¤ºãã¾ãã
     æå®ãããåä¸ãªããç¯å²åã®ãªãã¸ã§ã³ã®è¡¨ç¤º tip ãªãã¸ã§ã³ã®è¡¨ç¤º

    tip ãªãã¸ã§ã³(ä¸è¬ã« tip ã¨è¡¨è¨)ã¨ã¯ããªãã¸ããªããã¦æãæ°ããè¿½å 
    ããããã§ã³ã¸ã»ããã«ãããªãã¸ã§ã³ã§ããã¨åæã«ãæãæ°ããå¤æ´
    ããããããã®ãã¨ã§ãããã¾ãã

    ã³ãããããç´å¾ã§ããã°ãçæããããã§ã³ã¸ã»ããã tip ã¨ãªãã¾ãã
    ä»ã®ãªãã¸ããªãããã§ã³ã¸ã»ããã®åãè¾¼ã¿ãããç´å¾ã§ããã°ãåãè¾¼ã¿
    å¯¾è±¡ãªãã¸ããªã§ã® tip ãç¾ãªãã¸ããªã® tip ã¨ãªãã¾ãã"tip" ã¿ã°ã¯
    ç¹å¥ãªã¿ã°ã§ãæ¹åããä»ã®ãªãã¸ã§ã³ã¸ã®ä»ãæ¿ãã¯ã§ãã¾ããã
     é¡ä¼¼åº¦ã¯æ°å¤ã§ãªããã°ãªãã¾ãã é¡ä¼¼åº¦ã¯0ãã100ã®éã§ãªããã°ãªãã¾ãã ãã§ã³ã¸ã»ããã®åå²æ¢ç´¢

    åé¡çºçå¥æ©ã¨ãªããã§ã³ã¸ã»ããã®ç¹å®ãè£å©ãã¾ãã
    ä½¿ç¨éå§ã®éã«ã¯ãåé¡ãçºçããã®ãæ¢ç¥ã®æå¤ã®ãã§ã³ã¸ã»ããã
    bad ã¨ãã¼ã¯ããåé¡ã®çºçããªãæãæ°ãããã§ã³ã¸ã»ããã
    good ã¨ãã¼ã¯ãã¾ããbisect ã³ãã³ãã¯ä½æ¥­é åãæ¤è¨¼å¯¾è±¡ãã§ã³ã¸ã»ãã
    ã¸ã¨æ´æ°ãã¾ã(--noupdate æå®æé¤ã)ã
    å½è©²ãã§ã³ã¸ã»ãããæ¤è¨¼ãããªããä½æ¥­é å(ã®ãã§ã³ã¸ã»ãã)ã bad 
    ãããã¯ good ã§ãã¼ã¯ãã¦ãã ãããbisect ã¯ä½æ¥­é åãæ¬¡ã®æ¤è¨¼åè£
    ãã§ã³ã¸ã»ããã§æ´æ°ããããbad ãªãã¸ã§ã³ãç¹å®ã§ããæ¨ãåºåãã¾ãã

    æç­ã«ã¯ããªãã¸ã§ã³æå®ãä½¿ç¨ãã¦ãä½æ¥­é åã®æ´æ°ç¡ãã§ãªãã¸ã§ã³ã
    good ãªãã bad ã«ãã¼ã¯ãããã¨ãã§ãã¾ãã

    ã³ãã³ããæå®ããå ´åã¯ãèªåçãªåå²æ¢ç´¢ã«ä½¿ç¨ããã¾ãã
    ã³ãã³ãã®çµäºã³ã¼ãã¯ãªãã¸ã§ã³ã«å¯¾ãã bad ãªãã good ã®ãã¼ã¯ä»ã
    ã«ä½¿ç¨ããã¾ããçµäºã³ã¼ã 0 ã¯ goodã125 ã¯ã¹ã­ããã127(ã³ãã³ãã
    è¦ã¤ãããªãå ´å)ã¯åå²æ¤ç´¢ä¸­æ­ãããä»¥å¤ã® 0 ããå¤§ããçµäºã³ã¼ãã¯
    bad ã®ãã¼ã¯ä»ãã¨ã¿ãªããã¾ãã
     æã¡æ¶ããã§ã³ã¸ã»ããã«ããããããå¢ãã¾ã - ãã¼ã¸ãå¿ããã«
 ãã¼ã¸ãæªã³ãããã§ã - ãªãã¸ã§ã³ãæå®ãã¦ãã ãã ä½æ¥­é åã®æ´æ°

    æå®ããããªãã¸ã§ã³æç¹ã®åå®¹ã§ãä½æ¥­é åãæ´æ°ãã¾ãã
    ãªãã¸ã§ã³æå®ãç¡ãå ´åã¯ãç¾ãã©ã³ãã®ææ°ãªãã¸ã§ã³ã§æ´æ°ãã¾ãã
    ä½æ¥­é åä¸­ã®ãã¡ã¤ã«ãåé¤ããå ´åã¯ããªãã¸ã§ã³ã« null ãæå®ãã¾ã
    ('hg clone -U' ã¨åæ§ã®ç¶æã«ãªãã¾ã)ã

    ä½æ¥­é åä¸­ã«æªã³ãããã®å¤æ´ãç¡ãå ´åã¯ããªãã¸ããªã«è¨é²ããã¦ãã
    æå®ãªãã¸ã§ã³æç¹ã®åå®¹ã§ãä½æ¥­é åãæ´æ°ããã¾ããæå®ãªãã¸ã§ã³ã
    ä½æ¥­é åã®è¦ªãªãã¸ã§ã³ã¨ç°ãªããã©ã³ãã®ãã®ã§ããå ´åãä½æ¥­é åã¯
    å¥ãã©ã³ãã¸ã¨ç§»è¡ãã¾ãã

    æªã³ãããã®å¤æ´ãæãå ´åã-C ãªãã·ã§ã³ãæå®ãããã¨ã§ãå¤æ´åå®¹ã
    ç ´æ£ããæå®ãªãã¸ã§ã³æç¹ã®åå®¹ã§ä½æ¥­é åãå¼·å¶çã«æ´æ°ãã¾ãã

    æªã³ãããã®å¤æ´ãæããä¸ã¤ -C ãªãã·ã§ã³ãæå®ãããªãã£ãå ´åã¯ã
    è¦ªãªãã¸ã§ã³ã¨æå®ãªãã¸ã§ã³ãåä¸ãã©ã³ãã«å±ããä¸ã¤ãäºããç´ç³»ã®
    é¢ä¿ã«ããæã«éããæªã³ãããã®å¤æ´åå®¹ã¨æå®ãªãã¸ã§ã³ããã¼ã¸ãã
    çµæã§ä½æ¥­é åãæ´æ°ããã¾ããããä»¥å¤ã®å ´åã¯ã'merge' ãªãã 
    'update -C' ã®ä½¿ç¨ãä¿ããä¸ã§ãã³ãã³ãå®è¡ã¯ä¸­æ­ããã¾ãã

    1ã¤ã®ãã¡ã¤ã«ã ããä»¥åã®ç¶æã«æ»ãå ´åã¯ revert ãä½¿ç¨ãã¦ãã ããã

    -d/--date ã¸ã®æå®ã«é¢ãã¦ã¯ã'hg help dates' ãåç§ãã¦ãã ããã
     ã°ã­ã¼ãã«ãªãã·ã§ã³ã¯ "hg -v help %s" ã§è¡¨ç¤ºããã¾ã å¥åããã³ã°ã­ã¼ãã«ãªãã·ã§ã³ã¯ "hg -v help%s" ã§è¡¨ç¤ºããã¾ã å¨ã³ãã³ãã®ä¸è¦§ã¯ "hg help" ã§è¡¨ç¤ºããã¾ã å¨ã³ãã³ãã®ä¸è¦§ã¯ "hg help" ã§ãã³ãã³ãè©³ç´°ã¯ "hg -v" ã§è¡¨ç¤ºããã¾ã git æ¡å¼µå·®åå½¢å¼ãä½¿ç¨ ã¡ã¿ãã¼ã¿è¤è£½ã« pull ãã­ãã³ã«ãä½¿ç¨ éå§ç¸®ã§ã®è»¢é(LAN ã§ã®é«éè»¢éç¨) ããã¯ã°ã©ã¦ã³ãå®è¡æã§ã®åé¨ç¨éåã ãªãã¸ããªã®æ´åæ§æ¤è¨¼

    ç¾ãªãã¸ããªã®æ´åæ§ãæ¤è¨¼ãã¾ãã

    æ¬ã³ãã³ãã¯ããªãã¸ããªã®æ´åæ§ã«é¢ããåºç¯ãªæ¤è¨¼ãè¡ãã¾ãã
    å¤æ´è¨é²ã»ãããã§ã¹ãã»åæ§æç®¡çå¯¾è±¡ãã¡ã¤ã«ã«ãããããã·ã¥å¤ããã³
    ãã§ãã¯ãµã ãç¸äºé¢é£ä»ãããã³ã¤ã³ããã¯ã¹ç­ã®æ´åæ§ãæ¤è¨¼ããã¾ãã
     