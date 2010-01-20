#!/bin/bash -v

backup.py restore
cd mozilla
rm -rf memory/jemalloc/crtsrc
rm -rf memory/jemalloc/src
hg status | awk '{print $2}' | tr \\ / | xargs rm -f
hg update
cd -