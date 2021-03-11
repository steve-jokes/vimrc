#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
from urllib.parse import quote

if __name__ == '__main__':
    print(quote(sys.stdin.read()), end='')
