#!/usr/bin/env python

from setuptools import setup, find_packages

setup(name='Histo-ML',
      version='1.0',
      description='Data and ML Platform for Whole Slide Histopathology Images',
      author='Alex Shepherd',
      author_email='alexnshepherd@hotmail.com',
      packages=find_packages(exclude=("tests*"))
     )