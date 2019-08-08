#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import json

if __name__ == '__main__':
    for line in sys.stdin:
        line = line.replace(r"\n", "\n")
        line = line.replace(r'\t', "\t")
        print(line, end="")
