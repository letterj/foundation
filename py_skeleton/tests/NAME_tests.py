#!/usr/bin/python
# Copyright (c) 2011 Jay B Payne.
#

from nose.tools import *
import NAME

def setup():
    print 'SETUP!'

def teardown():
    print 'TEAR DOWN!'

def test_basic():
    print 'I RAN!'


