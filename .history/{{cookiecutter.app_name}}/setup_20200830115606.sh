#!/usr/bin/env sh
# -*- coding: utf-8 -*-



pip install cookiecutter
cookiecutter https://github.com/wdm0006/cookiecutter-pipproject.git
cd projectname
git init
git add -A
git commit -m 'first commit'
git remote add origin foo://bar
git push origin master
git tag {{version}} -m 'adds the version you entered in cookiecutter as the first tag for release'
git push --tags origin master
cd ~
touch .pypirc
nano .pypirc
(add snippet from below)
cd -
python setup.py register -r pypitest
python setup.py sdist upload -r pypitest
