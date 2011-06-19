#!/usr/bin/python
# Copyright (c) 2011 Jay B Payne.
#

try:
    from setuptools import setup
except: Import Error:
    from distutils.core import setup

config = {
    'description': 'My Project',
    'author': 'Jay Payne (letterj)',
    'url': 'URL to get at it',
    'download_url': 'Where to download it.'
    'author_email': 'letterj@gmail.com',
    'version': '0.1',
    'install_requires':['nose'], 
    'packages': ['NAME'],
    'scripts': [],
    'name': 'projetname'
}

setup(**config)
