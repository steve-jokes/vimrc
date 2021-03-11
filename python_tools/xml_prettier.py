#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import xml.dom.minidom

if __name__ == '__main__':
    doc = xml.dom.minidom.parseString(sys.stdin.read())
    print(doc.toprettyxml(), end="")
