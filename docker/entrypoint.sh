#!/usr/bin/env bash



virtualenv -p python3 venv-virtualen-old-sad

# python3 -m venv venv-python3 method is just broken on centos7 do not use.
python3 -m venv venv-python3-old-sad
/work/venv-python3-old-sad/bin/python -m ensurepip --upgrade

# if the system has python-virtualenv pacakge installed with rpm/yum, you must uninstall virtualenv with rpm, to be able to upgrade the virtaul env and pip default version systemwide.

yum erase -y python-virtualenv
pip install --upgrade "pip < 21.0"
pip install --upgrade "virtualenv < 20.0"
pip3 install --upgrade "pip~=21.3.1"
pip3 install --upgrade "setuptools~=59.6.0"

virtualenv -p python3 venv-virtualenv-upgrade


for i in $(find / -name *pip -type f | sort); do $i --version; done

# echo "MORE"

# for i in $(find /work -name *python -type f | sort); do $i --version; done

