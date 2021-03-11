#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
from urllib.parse import unquote

if __name__ == '__main__':
    print(unquote(sys.stdin.read()), end='')
