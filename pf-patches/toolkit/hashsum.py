#!/usr/bin/env python
# -*- coding: UTF-8 -*-

import sys, os
import hashlib

class hashsum:
    def __init__(self):
        self.blocksize = 16384
        pass

    def calculate(self, filename, method):
        m = hashlib.new(method)
        f = open(filename, 'r')
        if not f:
            return ''

        while 1:
            buf = f.read(self.blocksize)
            if not buf:
                break
            m.update(buf)

        f.close()

        return m.hexdigest()

if __name__ == '__main__':
    import optparse
    parser = optparse.OptionParser()
    parser.add_option('-c', '--check', help='read hash sums from the FILEs and check them',
                  dest='filename')
    parser.add_option('-m', '--method', help='Hash method: md5, sha1, sha224, sha256, sha384, sha512',
                  dest='method')

    (options, args) = parser.parse_args()

    if options.method:
        method = options.method
    else:
        method = 'sha1'

    h = hashsum()

    if not options.filename:
        for file in args:
            hexdigest = h.calculate(file, method)
            if not hexdigest is '':
                print('%s  %s' % (h.calculate(file, method), file))
        sys.exit(0)
    else:
        f = open(options.filename, 'rU')
        if not f:
            sys.exit(-1)
        lines = [ line.rstrip('\n') for line in f ]

        filehashlist = []
        for line in lines:
            space = line.find(' ')
            filehashlist.append((line[space + 2:], line[:space].lower()))

        for file, hash in filehashlist:
            digest = h.calculate(file, method)
            if digest == hash:
                print('%s: OK' % file)
            else:
                print('%s: Fail! Expect %s but %s' % (file, hash, digest))
                sys.exit(-1)

# vim:ts=4:sw=4:sta:et:sts=4:ai:nowrap
