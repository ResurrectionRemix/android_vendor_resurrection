#!/usr/bin/env python

from __future__ import print_function

import base64
import sys

pkFile = open(sys.argv[1], 'rb').readlines()
base64Key = ""
inCert = False
for line in pkFile:
    if line.startswith(b"-"):
        inCert = not inCert
        continue

    base64Key += line.strip()

print(base64.b16encode(base64.b64decode(base64Key)).lower())
