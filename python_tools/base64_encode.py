#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import base64

if __name__ == '__main__':
    print(base64.b64encode(sys.stdin.read().encode()).decode(), end='')
